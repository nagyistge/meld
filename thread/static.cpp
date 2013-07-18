#include <iostream>
#include <boost/thread/barrier.hpp>

#include "thread/static.hpp"
#include "db/database.hpp"
#include "db/tuple.hpp"
#include "process/remote.hpp"
#include "sched/thread/assert.hpp"
#include "vm/state.hpp"
#include "sched/common.hpp"

using namespace boost;
using namespace std;
using namespace process;
using namespace vm;
using namespace db;
using namespace utils;

namespace sched
{

void
static_local::assert_end(void) const
{
   assert(!has_work());
   assert(is_inactive());
   assert(all_threads_finished());
   assert_thread_end_iteration();
   assert_static_nodes_end(id, state.all);
}

void
static_local::assert_end_iteration(void) const
{
   assert(!has_work());
   assert(is_inactive());
   assert(all_threads_finished());
   assert_thread_end_iteration();
   assert_static_nodes_end_iteration(id, state.all);
}

void
static_local::new_agg(work& new_work)
{
   thread_intrusive_node *to(dynamic_cast<thread_intrusive_node*>(new_work.get_node()));
   
   assert_thread_push_work();
   
   to->add_work(new_work.get_tuple());
   
   if(!to->in_queue()) {
      add_to_queue(to);
      to->set_in_queue(true);
   }
}

void
static_local::new_work(const node *, work& new_work)
{
   thread_intrusive_node *to(dynamic_cast<thread_intrusive_node*>(new_work.get_node()));
   
   assert_thread_push_work();
   
   to->add_work(new_work.get_tuple());
   //cout << id << " Add to queue node " << to->get_id() << endl;
   
   if(!to->in_queue()) {
      add_to_queue(to);
      to->set_in_queue(true);
   }

   assert(to->in_queue());
}

void
static_local::new_work_other(sched::base *, work& new_work)
{
   assert(is_active());
   
   thread_node *tnode(dynamic_cast<thread_node*>(new_work.get_node()));
   
   assert(tnode->get_owner() != NULL);
   
   static_local *owner(dynamic_cast<static_local*>(tnode->get_owner()));

   owner->buffer.push(new_work);

   //cout << id << " Add to buffer node " << tnode->get_id() << endl;

   if(this != owner) {
      spinlock::scoped_lock l2(owner->lock);
      
      if(owner->is_inactive() && owner->has_work())
      {
         owner->set_active();
         assert(owner->is_active());
      }
   } else {
      assert(is_active());
   }
#ifdef INSTRUMENTATION
   sent_facts++;
#endif
}

void
static_local::retrieve_tuples(void)
{
   while(!buffer.empty()) {
      work new_work(buffer.pop());
		thread_intrusive_node *to(dynamic_cast<thread_intrusive_node*>(new_work.get_node()));
      static_local *owner(dynamic_cast<static_local*>(to->get_owner()));

      if(owner == this) {
         to->add_work(new_work.get_tuple());
         if(!to->moving_around && !to->in_queue()) {
            add_to_queue(to);
            to->set_in_queue(true);
         }
      } else {
         owner->buffer.push(new_work);
         spinlock::scoped_lock l(owner->lock);
      
         if(owner->is_inactive() && owner->has_work())
         {
            owner->set_active();
            assert(owner->is_active());
         }
      }
   }
}

#ifdef COMPILE_MPI
void
static_local::new_work_remote(remote *, const node::node_id, message *)
{
   assert(false);
}
#endif

#ifdef TASK_STEALING
void
static_local::check_stolen_nodes(void)
{
   if(state.all->NUM_THREADS == 1)
      return;

   while(!stolen_nodes_buffer.empty()) {
      thread_intrusive_node *n(stolen_nodes_buffer.pop());

      assert(n->in_queue());

      n->moving_around = false;
      add_to_queue(n);
#ifdef INSTRUMENTATION
      stolen_total++;
#endif
   }
}

void
static_local::clear_steal_requests(void)
{
}

thread_intrusive_node*
static_local::steal_node(void)
{
   thread_intrusive_node *node(NULL);
   queue_nodes.pop(node);
   return node;
}

size_t
static_local::number_of_nodes(void) const
{
   return queue_nodes.size();
}

void
static_local::answer_steal_requests(void)
{
   static const size_t MIN_NODES = 1;
   const size_t total_nodes(number_of_nodes());
   if(total_nodes <= MIN_NODES)
      return;

   size_t total_threads(
         min(min(state.all->NUM_THREADS-1, (size_t)3),
            max((size_t)1, min(state.all->NUM_THREADS, (size_t)((double)state.all->NUM_THREADS * 0.5)))));
   size_t start_thread(rand(state.all->NUM_THREADS));
   thread_intrusive_node *node(NULL);

   for(size_t i(0), j(0); j < total_threads; ++i) {
      size_t tid((start_thread + i) % state.all->NUM_THREADS);

      if(tid == id) {
         start_thread = rand(state.all->NUM_THREADS);
         continue;
      }
      ++j;

      static_local *target((static_local*)state.all->ALL_THREADS[tid]);

      assert(target != this);

      if(target->is_inactive()) {
         size_t size(number_of_nodes());
         if(size <= MIN_NODES)
            return;

         const size_t frac((int)((double)size * (1.0 / (double)state.all->NUM_THREADS)));
         size = min(max((size_t)1, frac), size);

         while(size > 0 && number_of_nodes() != 0) {
            node = steal_node();
            assert(node != NULL);
            assert(node != current_node);
            assert(node->get_owner() == this);
            assert(node->in_queue());
            node->moving_around = true;
            node->set_owner(target);
            target->stolen_nodes_buffer.push(node);
            --size;
         }

         spinlock::scoped_lock l(target->lock);
   
         if(target->is_inactive()) {
            target->set_active();
            assert(target->is_active());
         }
      }

   }
}
#endif

void
static_local::generate_aggs(void)
{
   iterate_static_nodes(id);
}

bool
static_local::busy_wait(void)
{
   ins_idle;
   
   while(!has_work()) {
#ifdef TASK_STEALING
      check_stolen_nodes();
#endif
      retrieve_tuples();
      BUSY_LOOP_MAKE_INACTIVE()
      BUSY_LOOP_CHECK_TERMINATION_THREADS()
   }
   
   // since queue pushing and state setting are done in
   // different exclusive regions, this may be needed
   set_active_if_inactive();
   ins_active;
   assert(is_active());
   assert(has_work());
   
   return true;
}

bool
static_local::terminate_iteration(void)
{
   START_ROUND();
   
   if(has_work())
      set_active();
   
   END_ROUND(
      more_work = num_active() > 0;
   );
}

void
static_local::finish_work(db::node *no)
{
   base::finish_work(no);
   
   assert(current_node != NULL);
   assert(current_node->in_queue());
   assert(current_node->get_owner() == this);
}

bool
static_local::check_if_current_useless(void)
{
   if(!current_node->has_work()) {
      spinlock::scoped_lock lock(current_node->spin);
      
      if(!current_node->has_work()) {
         current_node->set_in_queue(false);
         assert(!current_node->in_queue());
         current_node = NULL;
         return true;
      }
   }
   
   assert(current_node->has_work());
   return false;
}

bool
static_local::set_next_node(void)
{
   if(current_node != NULL)
      check_if_current_useless();
   
   while (current_node == NULL) {   
#ifdef TASK_STEALING
      check_stolen_nodes();
#endif
      retrieve_tuples();

      if(!has_work()) {
         if(!busy_wait())
            return false;
      }

      if(!queue_nodes.pop(current_node))
         continue;
      
      assert(current_node->in_queue());
      assert(current_node != NULL);
      
      check_if_current_useless();
   }
   
   ins_active;
   
   assert(current_node != NULL);
   
   return true;
}

node*
static_local::get_work(void)
{  
   if(!set_next_node())
      return NULL;

#ifdef TASK_STEALING
   answer_requests++;
   if(answer_requests == 1) {
      answer_steal_requests();
      answer_requests = 0;
   }
#endif

   set_active_if_inactive();
   assert(current_node != NULL);
   assert(current_node->in_queue());
   assert(current_node->has_work());
   
   return current_node;
}

void
static_local::end(void)
{
}

void
static_local::init(const size_t)
{
   const node::node_id first_node(remote::self->find_first_node(id));
   const node::node_id last_node(remote::self->find_last_node(id));

   database::map_nodes::iterator it(state.all->DATABASE->get_node_iterator(first_node));
   database::map_nodes::iterator end(state.all->DATABASE->get_node_iterator(last_node));
   
   for(; it != end; ++it)
   {
      thread_node *cur_node((thread_node*)it->second);
      
      init_node(cur_node);
      
      assert(cur_node->in_queue());
      assert(cur_node->has_work());
   }
   
   threads_synchronize();
}

simple_tuple_vector
static_local::gather_active_tuples(db::node *node, const vm::predicate_id pred)
{
	simple_tuple_vector ls;
	thread_node *no((thread_node*)node);
	typedef thread_node::queue_type fact_queue;
	
	for(fact_queue::const_iterator it(no->queue.begin()), end(no->queue.end()); it != end; ++it) {
		node_work w(*it);
		simple_tuple *stpl(w.get_tuple());
		
		if(stpl->can_be_consumed() && stpl->get_predicate_id() == pred)
			ls.push_back(stpl);
	}
	
	return ls;
}

void
static_local::gather_next_tuples(db::node *node, simple_tuple_list& ls)
{
	thread_intrusive_node *no((thread_intrusive_node*)node);
   no->queue.top_list(ls);
}

static_local*
static_local::find_scheduler(const node *n)
{
   return (static_local*)((thread_intrusive_node*)n)->get_owner();
}

void
static_local::write_slice(statistics::slice& sl) const
{
#ifdef INSTRUMENTATION
   base::write_slice(sl);
   sl.work_queue = queue_nodes.size();
#ifdef TASK_STEALING
   sl.stolen_nodes = stolen_total;
   sl.steal_requests = steal_requests;
   stolen_total = 0;
   steal_requests = 0;
#endif
#else
   (void)sl;
#endif
}

static_local::static_local(const vm::process_id _id, vm::all *all):
   base(_id, all),
   current_node(NULL)
#ifdef TASK_STEALING
   , answer_requests(0)
#endif
#if defined(TASK_STEALING) && defined(INSTRUMENTATION)
   , stolen_total(0), steal_requests(0)
#endif
{
}

static_local::~static_local(void)
{
#ifdef TASK_STEALING
   clear_steal_requests();
#endif
}
   
}


#ifndef SCHED_NODES_THREAD_HPP
#define SCHED_NODES_THREAD_HPP

#include "mem/base.hpp"
#include "sched/nodes/in_queue.hpp"
#include "queue/bounded_pqueue.hpp"
#include "db/tuple.hpp"
#include "utils/spinlock.hpp"
#include "sched/base.hpp"
#include "process/work.hpp"

namespace sched
{

class thread_node: public in_queue_node
{
public:
	   
	utils::spinlock spin;
	
	typedef queue::safe_bounded_pqueue<process::node_work>::type queue_type;
	queue_type queue;
   
   inline void add_work(process::node_work& new_work)
   {
      queue.push(new_work, new_work.get_strat_level());
   }
   
   virtual inline bool has_work(void) const { return !queue.empty(); }
   
   inline process::node_work get_work(void)
   {
      return queue.pop();
   }
   
   virtual void assert_end(void) const
   {
      in_queue_node::assert_end();
      assert(!has_work());
   }
   
   virtual void assert_end_iteration(void) const
   {
      in_queue_node::assert_end_iteration();
      assert(!has_work());
   }
   
   explicit thread_node(const db::node::node_id _id, const db::node::node_id _trans):
      in_queue_node(_id, _trans),
      queue(vm::program::MAX_STRAT_LEVEL)
   {}
   
   virtual ~thread_node(void) { }
};

}

#endif

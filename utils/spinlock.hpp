
#ifndef UTILS_SPINLOCK_HPP
#define UTILS_SPINLOCK_HPP

#include <atomic>

namespace utils {

class spinlock
{
   private:

      std::atomic<bool> locked;

   public:

      inline void lock(void) {
         while(true) {
            if(try_lock())
               return;
         }
      }

      inline void unlock(void) {
         locked.store(false, std::memory_order_release);
      }

      inline bool try_lock(void) {
         bool expected(false);
         return locked.compare_exchange_strong(expected, true, std::memory_order_acquire,
               std::memory_order_relaxed);
      }

      explicit spinlock(void): locked(false) {}
};

}

#endif

# <a id="questions"> 🙋 Questions & Answers </a>

1. True or False: we can prevent the heap being erased during upgrades by using a stable heap.

   **Answer:** if stable heap means "Stable Memory" than Yes, stable memory can be use during upgrade process to prevent heap data being erased by saving them in stable memory.

2. A.call() -> B.call() -> C How much time (or rounds of consensus) do we need to wait for an answer?

   **Answer:** It depends upon on which subnet A, B & C are deployed.
               so for ex. if both are on same subnet, then 1+1=2 rounds of consensus, each taking 2 seconds so 2*2 = 4 seconds
                          if both are on different subnet: 2+2=4 rounds -> 2*4 = 8 seconds

3. Is possible to realize an intercanister call in query mode?

   **Answer:** No

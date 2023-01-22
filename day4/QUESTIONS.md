# <a id="questions"> 🙋 Questions & Answers </a>

1. Is the heap memory saved when upgrading a canister? How much heap memory does a canister has?

   **Answer:** No. Canister Heap Memory size: 4GB

2. How much accounts can a unique Principal own?

   **Answer:** 2^32 = 4,294,967,296

3. Can we safely upgrade a canister from interface A to interface B?

   **Interface A**

   ```motoko
   actor {
     public func greet(surname : Text, firstname : Text) : async Text {
       return "Hello" # firstname # surname # " !";
     };
   }
   ```

   **Interface B**

   ```motoko
   actor {
     public func greet(firstname : Text) : async Text {
       return "Hello" # firstname # " !";
     };
   }
   ```

   **Answer:** No, with **Interface B**, candid UI defination will change, so this upgrade will not be possible.

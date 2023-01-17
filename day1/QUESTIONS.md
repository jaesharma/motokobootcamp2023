# <a id="questions"> 🙋 Questions & Answers </a>
1. How much is the current memory capacity of a canister? 

    **Answer:** 4 GB

2. What is the issue with the following code sample?


    ```
    actor {
      let counter : Nat = 0;
      public func increment_counter() : async () {
        counter := counter + 1;
      };
    }
    ```
    **Answer:** let declare immutable variables and increment_counter method is trying to update counter, which will throw error because immutable variable cannot be updated.
To fix this issue, counter should be declared as "var".


3. What is the issue with the following code sample?
    ```
    actor {
      var message : Text = 0;

      public query func change_message(new_message : Text) : async () {
        message := new_message;
        return;
      };
    
      public query func see_message() : async Text {
        return(message);
      };
    }
    ```
    **Answer:**
    There are several issues here:
    - when function is marked as query, it should be used to get/read values only. Query function cannot modify state.
    - message is declared as Text but initialized with 0(number).
    
4.  False or True: we can remove the keyword **async** for return argument of a query function since queries are faster to answer.


    **Answer:** False

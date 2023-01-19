# <a id="questions"> 🙋 Questions & Answers </a>
1. Who controls the ledger canister?

    **Answer:** root canister (r7inp-6aaaa-aaaaa-aaabq-cai)

2. What is the subnet of the canister with the id: mwrha-maaaa-aaaab-qabqq-cai? How much nodes are running this subnet?

    **Answer:** Subnet: pae4o-o6dxf-xki7q-ezclx-znyd6-fnk6w-vkv5z-5lfwh-xym2i-otrrw-fqe. 
                Nodes: 16 nodes (at the time of writing)

3. I have a neuron with 1O ICPs locked with a dissolve delay of 4 years - my neuron has been locked for 2 years. What is my expected voting power?

    **Answer:** Expected voting = 1.125 x 1.5 x 10 = 16.875
    
4.  What is wrong with the following code?

    ```
    actor {
      let n : Nat = 50;
      let t : Text = "Hello";

      public func convert_to_text(m : Nat) : async Text {
        Nat.toText(m);
      };
    }
    ```

    **Answer:** missing import: “import Nat “mo:base/Nat”
    
5.  What is wrong with the following code?

    ```
    actor {
      var languages : [var Text] = ["English", "German", "Chinese", "Japanese", "French"];

      public func show_languages(language : Text) : async [var Text] {
        return (languages);
      };
    }
    ```

    **Answer:** The array of languages is not correctly declared, it should contain the var keyword before the first position of the array. like this: [var "English", "German", "etc..."].
    Also public functions should not return a mutable array so we have to change the languages array to inmutable or freeze the languages array before returning it and remove the var keyword from the return type.


6. What is wrong with the following code?

    ```
    actor {
      var languages : [Text] = ["English", "German", "Chinese", "Japanese", "French"];

      public func add_language(new_language: Text) : async [Text] {
        languages := Array.append<Text>(languages, [new_language]);
        return (languages);
      };

    }
    ```

    **Answer:** No issues with this piece of code particularly. The Array.append method is deprecated and should be replaced with Buffer.

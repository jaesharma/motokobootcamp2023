import List "mo:base/List";
import Buffer "mo:base/Buffer";
import Principal "mo:base/Principal";
import Array "mo:base/Array";
import HashMap "mo:base/HashMap";
import Iter "mo:base/Iter";
import Text "mo:base/Text";

actor Day4 {

    // challenge 1
    func unique<T>(l : List.List<T>, equal : (T, T) -> Bool) : List.List<T> {
        var r : [T] = [];
        let list = List.toIter(l);
        for (x in list) {
            // TODO: use hashmap instead
            var found = false;
            for (y in r.vals()) {
                if (equal(x, y)) {
                    found := true;
                };
            };
            if (found == false) {
                r := Array.append(r, [x]);
            };
        };
        return List.fromArray<T>(r);
    };

    // challege 2
    func reverse<T>(l : List.List<T>) : List.List<T> {
        return List.reverse(l);
    };

    // challege 3
    public shared ({ caller }) func is_anonymous() : async Bool {
        return Principal.isAnonymous(caller);
    };

    // challege 4
    func find_in_buffer<T>(buf : Buffer.Buffer<T>, value : T, equal : (T, T) -> Bool) : ?Nat {
        var index : Nat = 0;
        for (val in buf.vals()) {
            if (equal(value, val)) {
                return (?index);
            };
            index += 1;
        };
        return null;
    };

    // challege 5
    let usernames = HashMap.HashMap<Principal, Text>(0, Principal.equal, Principal.hash);

    public shared ({ caller }) func add_username(name : Text) : async () {
        usernames.put(caller, name);
    };

    public query func get_username(): async [(Principal, Text)] {
      var x: [(Principal, Text)] = [];
      for(entry in usernames.entries()) {
        x := Array.append([entry], x);
      };
      return x;
    }
};

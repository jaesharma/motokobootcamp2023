import Text "mo:base/Text";
import Char "mo:base/Char";
import Iter "mo:base/Iter";
import Array "mo:base/Array";
import Nat "mo:base/Nat";
import Int "mo:base/Int";
import Buffer "mo:base/Buffer";

actor {
    // challege 1
    public query func average_array(array : [Int]) : async Int {
        var sum : Int = 0;
        for (i in array.vals()) {
            sum += i;
        };
        sum / array.size();
    };

    // challenge 2
    public query func count_character(t : Text, c : Char) : async Nat {
        var count : Nat = 0;
        for (i in Text.toIter(t)) {
            if (Char.equal(i, c)) {
                count += 1;
            };
        };
        count;
    };

    // challenge 3
    func factorial(n : Nat) : Nat {
        if (n == 1) {
            return 1;
        };
        return n * factorial(n -1);
    };

    public query func async_factorial(n : Nat) : async Nat {
        return factorial(n);
    };

    // challenge 4
    public query func number_of_words(t : Text) : async Nat {
        let words = Text.split(t, #char ' ');
        return Iter.size<Text>(words);
    };

    // challenge 5
    public query func find_duplicates(a : [Nat]) : async [Nat] {
        var buf = Buffer.Buffer<Nat>(1);
        for (index in Iter.range(0, a.size() -1)) {
            for (j in Iter.range(index + 1, a.size() - 1)) {
                if (a[index] == a[j] and not Buffer.contains(buf, a[index], Nat.equal)) {
                    buf.add(a[j]);
                };
            };
        };
        return Buffer.toArray(buf);
    };

    // challenge 6
    public query func convert_to_binary(n : Nat) : async Text {
        var Iter : Int = n;
        var bin_string : Text = "";
        while (Iter > 0) {
            bin_string := Text.concat(Int.toText(Iter % 2), bin_string);
            Iter := Iter / 2;
        };
        return bin_string;
    };
};

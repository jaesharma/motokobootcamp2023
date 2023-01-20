import Int "mo:base/Int";
import Array "mo:base/Array";

actor Util {
    public query func second_maximum(array : [Int]) : async Int {
        let sortedArray : [Int] = Array.sort<Int>(array, Int.compare);
        let index : Nat = sortedArray.size() -2;

        return sortedArray[index];
    };

    public query func remove_even(array : [Nat]) : async [Nat] {
        return Array.filter<Nat>(array, func x = x % 2 == 1);
    };

    func drop<T>(xs : [T], n : Nat) : [T] {
        if (xs.size() <= n) return [];
        var index = 0;
        return Array.filter<T>(
            xs,
            func _arg {
                index += 1;
                return (index > n);
            },
        );
    };
};

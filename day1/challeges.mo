actor {
    // challege 1
    public query func multiply(n : Nat, m : Nat) : async Nat {
        return n * m;
    };

    // challege 2
    public query func volume(n : Nat) : async Nat {
        return n ** 3;
    };

    // challege 3
    public query func hours_to_minutes(n : Nat) : async Nat {
        return n * 60;
    };

    // challege 4
    var counter : Nat = 0;

    public func set_counter(n : Nat) : async () {
        counter := n;
    };

    public query func get_counter() : async Nat {
        return counter;
    };

    // challege 5
    public query func test_divide(n : Nat, m : Nat) : async Bool {
        if (n == 0) return false;
        return m % n == 0;
    };

    // challege 6
    public query func is_even(n : Nat) : async Bool {
        return n % 2 == 0;
    };
};

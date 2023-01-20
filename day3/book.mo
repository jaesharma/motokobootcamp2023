module Book {
    public type Book = {
        title : Text;
        pages : Nat;
    };

    public shared func create_book(title : Text, pages : Nat) : async Book {
        return ({
            title = title;
            pages = pages;
        });
    };
};

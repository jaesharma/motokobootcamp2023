import List "mo:base/List";
import Book "book";

actor Main {
    type Book = Book.Book;

    stable var book_list = List.nil<Book>();

    public shared func add_book(bookToBeAdded : Book) : async () {
        book_list := List.push<Book>(bookToBeAdded, book_list);
    };

    public query func get_books() : async List.List<Book> {
        return book_list;
    };
};

class Book {
  String _title;
  String _author;
  String _isbn;

  //Book();

  Book(this._title, this._author, this._isbn);

  set title(String newTitle) {
    _title = newTitle;
  }

  set author(String newAuthor) {
    _author = newAuthor;
  }

  set isbn(String newISBN) {
    _isbn = newISBN;
  }

  String? get title => _title;
  String? get author => _author;
  String? get isbn => _isbn;
}

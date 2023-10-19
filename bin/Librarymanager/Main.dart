import 'dart:io';
import 'Book.dart';
import 'Library.dart';

void main(List<String> args) {
  Library library;

  addBook("library" as List<Book>, "rewwr", "DSfsdf");
  findBook("1232" as List<Book>);
  removeBook(3 as List<Book>);
}

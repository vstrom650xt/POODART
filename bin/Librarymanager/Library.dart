import 'dart:io';
import 'Book.dart';

class Library {
  List<Book> library = [];
}



Book addBook(List<Book> library, String s, [String sc]) {
  print("write title");
  String title = stdin.readLineSync() ?? "";

  print("write Autor");
  String author = stdin.readLineSync() ?? "";
  print("write ISBN");
  String isbn = stdin.readLineSync() ?? "";
  Book book = Book(title, author, isbn);
  return book;
}

void findBook(List<Book> library) {
  String isbn = stdin.readLineSync() ?? "";
 for (var book in library) {
    if (book.isbn == isbn) {
      print("Libro encontrado:");
      print("Título: ${book.title}");
      print("Autor: ${book.author}");
      print("ISBN: ${book.isbn}");
      return; 
    }
  }

}

void removeBook(List<Book> library) {
  print("put the position you want to delete");
  int posi = stdin.readLineSync() as int;
  library.removeAt(posi);
}

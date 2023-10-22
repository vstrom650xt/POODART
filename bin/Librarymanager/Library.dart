import 'dart:io';
import 'Book.dart';

class Library {
  List<Book> library = [];

  Book addBook() {
    print("write title");
    String title = stdin.readLineSync() ?? "";
    print("write Autor");
    String author = stdin.readLineSync() ?? "";
    print("write ISBN");
    String isbn = stdin.readLineSync() ?? "";
    Book book = Book(title, author, isbn);
    return book;
  }

  void findBook() {
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

  void removeBook() {
    print("put the position you want to delete");
    int posi = stdin.readLineSync() as int;
    library.removeAt(posi);
  }

  void menu() {
    int response = 0;
    do {
      print('press 1 to add a book ');
      print('press 2 to remove a book ');
      print('press 3 to find Book');

      print('press 200 to exit ');
      response = int.tryParse(stdin.readLineSync() ?? '0') ?? 0;

      if (response == 1) {
        addBook();
      } else if (response == 2) {
        findBook();
      } else if (response == 3) {
        removeBook();
      } else if (response == 200) {
        exit(1);
      }
    } while (response != 200);
  }
}

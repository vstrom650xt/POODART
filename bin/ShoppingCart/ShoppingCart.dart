import 'dart:io';
import 'Product.dart';

class ShoppingCard {
  List<Product> lProducts = [];

  Product addProduct() {
    print("write title");
    String name = stdin.readLineSync() ?? "";
    print("write title");
    int price = stdin.readLineSync() as int;
    print("write title");
    int quantity = stdin.readLineSync() as int;
    Product product = Product(name, price, quantity);
    return product;
  }

  void findProduct() {
    String name = stdin.readLineSync() ?? "";
    for (var product in lProducts) {
      if (product.name == name) {
        print("Libro encontrado:");
        print("name: ${product.name}");
        print("quantity: ${product.quantity}");
        print("price: ${product.price}");
        return;
      }
    }
  }

  void removeProduct() {
    print("put the position you want to delete");
    int posi = stdin.readLineSync() as int;
    lProducts.removeAt(posi);
  }

  void checkAmount() {
    int total = 0;

    for (var i = 0; i < lProducts.length; i++) {
      total += lProducts[i].price as int;
    }
    print("the total price is $total");
  }

  void menu() {
    int response = 0;
    do {
      print('press 1 to add a product ');
      print('press 2 to remove a product ');
      print('press 3 to mark a task ');
      print('press 4 to see the total amount');

      print('press 200 to exit ');
      response = int.tryParse(stdin.readLineSync() ?? '0') ?? 0;

      if (response == 1) {
        addProduct();
      } else if (response == 2) {
        findProduct();
      } else if (response == 3) {
        removeProduct();
      } else if (response == 4) {
        checkAmount();
      } else if (response == 200) {
        exit(1);
      }
    } while (response != 200);
  }
}

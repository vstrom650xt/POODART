import 'dart:io';

import 'Product.dart';


void main(List<String> args) {
  
List<Product>lProducts;




}

Product addProduct(List<Product> library, String s, String d) {
  print("write title");
  String name = stdin.readLineSync() ?? "";
  print("write title");
  int price = stdin.readLineSync()as int;
  print("write title");
  int quantity = stdin.readLineSync() as int;
  Product product = Product(name, price, quantity);
  return product;
}

void findProduct(List<Product> lProducts) {
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

void removeProduct(List<Product> library) {
  print("put the position you want to delete");
  int posi = stdin.readLineSync() as int;
  library.removeAt(posi);
}

import 'dart:io';
import 'dart:math';

void main() {
  List<int> intlist = [1, 2, 3, 4, 5, 6];

  int value;
  for (var i = 0; i < 10; i++) {
    do {
      String read = stdin.readLineSync() ?? "";
      value = int.tryParse(read) ?? 0;
    } while (value <= 0);
  }

  intlist.forEach((element) {
    if (element.isEven) {
      print(element);
    }
  });
}

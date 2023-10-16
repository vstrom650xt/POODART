import 'dart:io';

void main() {
  print("write a phrase");
  String? a = stdin.readLineSync();
  a = a?.toLowerCase();

  print("write a letter");
  String? b = stdin.readLineSync();
  b = b?.toLowerCase();
  bool its = false;

  for (var i = 0; i < a!.length; i++) {
    if (a[i] == b) {
      its = true;
    }
  }

  if (its == true) {
    print("si que esta");
  } else {
    print("no esta");
  }
}

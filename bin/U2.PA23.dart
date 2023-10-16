import 'dart:io';

List<String> ola = [];

void main() {
  menu();
}

void addToList() {
  print("introduce something to the list");
  String? value = stdin.readLineSync();
  ola.add(value!);
}

void removeToList() {
  String? response = stdin.readLineSync().toString();
  ola.remove(response);
}

bool checkInList() {
  print("what item would to like to check ");
  String? response = stdin.readLineSync();
  bool a = false;
  ola.forEach((element) {
    a = element == response ? true : false;
  });

  a == true ? print("its in your list") : print("its not in your list");

  return a;
}

void showList() {
  ola.forEach((element) {
    print(element);
  });
}

void menu() {
  do {
    print("choose a number");

    print("1.-add");
    print("2.-remove");
    print("3.-check");
    print("4.-show");

    String? response = stdin.readLineSync();
    int? num = (int.tryParse(response!) ?? 0);

    switch (num) {
      case 1:
        {
          addToList();
        }
        break;

      case 2:
        {
          removeToList();
        }
        break;
      case 3:
        {
          checkInList();
        }
        break;
      case 4:
        {
          showList();
        }
        break;
    }
  } while (num != 10000);
}

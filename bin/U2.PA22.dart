import 'dart:io';

Map<String, int> ola = {};
void main() {
  menu();
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
          addPhoneNumber();
        }
        break;

      case 2:
        {
          getContactNameByName();
        }
        break;
      case 3:
        {
          deletePhoneNumber();
        }
        break;
      case 4:
        {
          update();
        }
        break;
    }
  } while (num != 10000);
}

void addPhoneNumber() {
  print("write a name");
  String? name = stdin.readLineSync();
  print("write a phone number");
  int num = int.tryParse(stdin.readLineSync() ?? '0') ?? 0;
  ola['name'] = num;

  print("phone number saved");
}

void getContactNameByName() {
  print("write a name");
  String? name = stdin.readLineSync();
  if (!ola.containsKey(name)) {
    print("Contact doesnt exit ");
  } else {
    int? num = ola['name'];
    print('the number of $name is: $num');
  }
}

void deletePhoneNumber() {
  print("write a name");
  String? name = stdin.readLineSync();
  if (!ola.containsKey(name)) {
    print("Contact doesnt exit");
  } else {
    ola.remove(name);
  }
}

void update() {
  print("write a name");
  String? name = stdin.readLineSync();
  if (!ola.containsKey(name)) {
    print("Contact doesnt exit ");
  } else {
    print("write a phone number");
    int num = int.tryParse(stdin.readLineSync() ?? '0') ?? 0;

    ola.update(name!, (value) => num);
  }
}

void showMap() {
  for (var entry in ola.entries) {
    print('${entry.key}: ${entry.value}');
  }
}

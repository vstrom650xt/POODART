import 'dart:io';

enum Days { m, t, w, th, f, s, d }

void main() {
  List<Days> alldays = Days.values;

  print("choose a day of the week");
  String? a = stdin.readLineSync();
  a = a?.toLowerCase();

  switch (a) {
    case "m":
      {
        print("its not weekend");
      }
      break;

    case "t":
      {
        print("its not weekend");
      }
      break;
    case "w":
      {
        print("its not weekend");
      }
      break;
    case "th":
      {
        print("its not weekend");
      }
      break;
    case "f":
      {
        print("its not weekend");
      }
      break;
    case "s":
      {
        print("its weekend");
      }
      break;
    case "d":
      {
        print("its weekend");
      }
      break;
  }
/*
  for (var i = 0; i < alldays.length; i++) {
    print(alldays[i]);
  }

  if (a == "s" || a == "d") {
    print("its weekend");
  } else {
    print("its a day of week");
  }*/
}

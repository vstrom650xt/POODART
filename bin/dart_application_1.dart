import 'dart:io';

void main() {
//1Declare two numerical variables to which you will assign values, and a third
//one that will hold the result of multiplication if the first variable is less than or
//equal to the second, and integer division if the first is greater. Perform this
//exercise using the 'if' statement

  int num1 = 2; // First numerical variable
  int num2 = 5; // Second numerical variable
  int result; // Result variable

  if (num1 <= num2) {
    // If the first variable is less than or equal to the second, perform multiplication
    result = num1 * num2;
  } else {
    // If the first variable is greater, perform integer division
    result = num1 ~/ num2;
  }

//  print('Result: $result');

//2
  int result2 = (num1 <= num2) ? (num1 * num2) : (num1 ~/ num2);
  // print('object $result2');
//3

  int? variable1; // Puede contener un valor nulo
  int? variable2 = 5; // Asigna un valor de tu elección, incluido null

  int resultad = (variable1 ?? 0) + (variable2 ?? 0);

  // print("The result of the sum is $resultad");

  //4
  String? hola = "hola esto es una prueba";
  int i = 0;
  do {
    if (hola.isEmpty || hola == null) {
      print("esto esta vacio");
    } else {
      //     print({hola[i]});
    }
    i++;
  } while (i < hola.length);

//
  int j = hola.length - 1;
  do {
    if (hola.isEmpty || hola == null) {
      print("esto esta vacio");
    } else {
      print({hola[j]});
    }
    j--;
  } while (j >= 0);

//5
  String strNumero1 = '5.25';
  String strNumero2 = 'abc';

  // Intentar convertir las cadenas a double
  double? numero1 = double.tryParse(strNumero1);
  double? numero2 = double.tryParse(strNumero2);

  // Verificar si la conversión fue exitosa y asignar 0 si no lo fue
  numero1 ??= 0.0;
  numero2 ??= 0.0;

  // Sumar los números
  double suma = numero1 + numero2;

  print('Número 1: $numero1');
  print('Número 2: $numero2');
  print('Suma: $suma');
}

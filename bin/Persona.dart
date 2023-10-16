import 'dart:io';

class Persona {
  String nombre;
  String? apellido;
  int edad;

  Persona(this.nombre, this.edad);

  void saludar() {
    print("hola");
  }

  int getEdad() {
    return edad;
  }
}

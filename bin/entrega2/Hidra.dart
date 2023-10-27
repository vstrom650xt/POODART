import 'Ser.dart';

class Hidra extends Ser with Envenenar {
  Hidra(String nombre) : super(nombre);
  @override
  void muestraInfoAspecto() => print("Soy una serpiente marinacon 9 cabezas");
  @override
  void muestraInfoAtaque() => envenena();
}

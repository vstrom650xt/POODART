import 'Humano.dart';
import 'Ser.dart';

class Centauro extends Humano with Cocear {
Centauro(String nombre) : super(nombre);
@override
void muestraInfoAspecto() {
super.muestraInfoAspecto();
print('con cuerpo de caballo de cintura para abajo');
}
@override
void muestraInfoAtaque() {

    super.muestraInfoAtaque();
  cocea();
  }
}
import 'Ser.dart';
import 'Humano.dart';

class Minotauro extends Humano with Embestir, Cocear {
Minotauro(String nombre) : super(nombre);
@override
void muestraInfoAspecto() {
super.muestraInfoAspecto();
print('con cabeza y patas de toro');
}
@override
void muestraInfoAtaque() {
super.muestraInfoAtaque();
embiste();
cocea();
}
}
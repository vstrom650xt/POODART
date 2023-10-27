import 'Ser.dart';

class Humano extends Ser {
Humano(String nombre) : super(nombre);



@override
void muestraInfoAspecto() => print('Yo, $nombre, tengo aspectohumano');

@override
void muestraInfoAtaque() {
print('Yo, $nombre:');
print('Puedo golpear');
print('Puedo blandir la espada');
print('Puedo disparar con arco');
}












}
import 'Ser.dart';

class Quimera extends Ser with Envenenar, Morder, Embestir,
Desgarrar {
Quimera(String nombre) : super(nombre);
@override
void muestraInfoAspecto() {
print('Tengo cuerpo y cabeza de león, una cabeza de cabraen la espalda y cabeza de serpiente en la cola');
}
@override
void muestraInfoAtaque() {
envenena();
muerde();
embiste();
desgarra();
}
}
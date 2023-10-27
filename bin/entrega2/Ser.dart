abstract class Ser {
String nombre;
// Indicará la cantidad de seres creados
static int cantidadSeres = 0;
// Constructor
Ser(this.nombre) {
// También se puede omitir la clase al hacer el incremento
++Ser.cantidadSeres;
}
// Métodos abstractos, a sobrescribir por las clases hijas
void muestraInfoAspecto();
void muestraInfoAtaque();

}

mixin Desgarrar {
void desgarra() => print('Puedo desgarrar');
}
mixin Morder {
void muerde() => print('Puedo morder');
}
mixin Embestir {
void embiste() => print('Puedo embestir');
}
mixin Envenenar {
void envenena() => print('Puedo envenenar');
}
mixin Cocear {
void cocea() => print('Puedo dar coces');
}

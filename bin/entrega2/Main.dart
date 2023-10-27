import 'Centauro.dart';
import 'Hidra.dart';
import 'Minotauro.dart';
import 'Quimera.dart';
import 'Ser.dart';

void main(List<String> arguments) {
  List<Ser> seres = [];
  seres.add(Minotauro('Minotauro'));
  seres.add(Centauro('Centauro'));
  seres.add(Quimera('Quimera'));
  seres.add(Hidra('Hidra'));
  seres.forEach((element) {
    print(element.nombre);
    element.muestraInfoAspecto();
    element.muestraInfoAtaque();
    print('-------------------');
  });
  print("Tenemos ${Ser.cantidadSeres} seres en la lista");

  int numMinotauros, numCentauros, numQuimeras, numHidras;
  numMinotauros = seres.whereType<Minotauro>().length;
  numCentauros = seres.whereType<Centauro>().length;
  numQuimeras = seres.whereType<Quimera>().length;
  numHidras = seres.whereType<Hidra>().length;
  print('Minotauros: $numMinotauros');
  print('Centauros: $numCentauros');
  print('Quimeras: $numQuimeras');
  print('Hidras: $numHidras');


int numVenenosos = seres.whereType<Envenenar>().length;
print('Seres venenosos: $numVenenosos');


























}

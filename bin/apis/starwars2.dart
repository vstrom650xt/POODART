import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;
import 'dart:convert' as convert; //paquete para conversión de datos

void main() async {
  try {
    print('pon un num');
    var num = stdin.readLineSync();

    var url = Uri.parse("https://swapi.dev/api/films/$num");
    var respuesta = await http.get(url);

    switch (respuesta.statusCode) {
      case 200:
        //  print(respuesta.body);
        break;
      case 404:
        print('Página no encontrada');
        break;
      case 500:
        print('Error interno del servidor');
    }
    var formatedRes = json.decode(respuesta.body);
    print(formatedRes);
  } catch (e) {
    print(e);
  }
}

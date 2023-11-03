import 'package:http/http.dart' as http;
import 'dart:convert' as convert; //paquete para conversión de datos

void main() async {
  try {
    var url = Uri.parse('https://jsonplaceholder.typicode.com/users/1');
    var respuesta = await http.get(url);
    switch (respuesta.statusCode) {
      case 200:
        print(respuesta.body);
        break;
      case 404:
        print('Página no encontrada');
        break;
      case 500:
        print('Error interno del servidor');
    }
  } catch (e) {
    print(e);
  }
}

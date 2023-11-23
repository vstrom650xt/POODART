import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

void main() async {
  try {
    print('Enter a number:');
    var num = stdin.readLineSync();

    var url = Uri.parse("https://swapi.dev/api/films/$num");
    var response = await http.get(url);

    switch (response.statusCode) {
      case 200:
        var formattedRes = jsonDecode(response.body);
        //   print(formattedRes);
        if (formattedRes is Map) {
          // Check if the response is a JSON object (a map)
          var title = formattedRes["title"];
          var date = formattedRes["release_date"];
          if (title != null) {
            print("Title: $title");
            print("fecha lanzamiento :$date");
            formattedRes['starships'].forEach((element) async {
              var naveUrl = Uri.parse(element);
              var resNAve = await http.get(naveUrl);
              Map<String, dynamic> MAPNAV = jsonDecode(resNAve.body);
              print(' ${MAPNAV['name']}');
            });
          } else {
            print("Title not found in the response.");
          }
        } else {
          print("Response is not a JSON object (map).");
        }
        break;
      case 404:
        print('Page not found');
        break;
      case 500:
        print('Internal server error');
        break;
    }
  } catch (e) {
    print(e);
  }
}

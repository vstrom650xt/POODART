import 'dart:io';
import 'dart:math';

void main(List<String> args) async {
  print("write a city");
  String city = stdin.readLineSync() ?? '';
  print("object");
  try {
    fetchWeatherForecast(city).then((forecast) {
      print('Weather forecast for $city: $forecast');
    });
  } catch (e) {
    print('error :$e.message');
  }
}

Future<String> fetchWeatherForecast(String city) {
  return Future.delayed(Duration(seconds: 3), () {
    print("Searching the city $city");

    int res = Random().nextInt(10);

    return res > 5 ? 'Sunny' : "raining";
  });
}

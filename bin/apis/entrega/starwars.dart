import 'dart:convert';
import 'dart:io';

void main() {
  final List<Future<void>> fetchFilmDataFutures = List.generate(6, (index) {
    return fetchFilmData(index + 1)
        .then((filmData) {
      final title = filmData['title'];
      final openingCrawl = filmData['opening_crawl'];
      print('Title: $title');
      print('Opening Crawl: $openingCrawl');
    })
    .catchError((error) {
      print('Error fetching film data: $error');
    });
  });

  Future.wait(fetchFilmDataFutures)
      .then((_) {
    print('All film data fetched successfully.');
  });
}

Future<Map<String, dynamic>> fetchFilmData(int filmNumber) {
  final url = Uri.parse('https://swapi.dev/api/films/$filmNumber/');
  
  return HttpClient()
      .getUrl(url)
      .then((HttpClientRequest request) => request.close())
      .then((HttpClientResponse response) {
    if (response.statusCode == 200) {
      return response.transform(utf8.decoder).join();
    } else {
      throw 'Failed to fetch film data. Status code: ${response.statusCode}';
    }
  })
  .then((String responseBody) {
    final filmData = json.decode(responseBody);
    return filmData;
  });
}

import 'package:http/http.dart' as http;
import 'dart:convert';

class Network {
  final String url;
  final String path;
  final Map<String, Object> parameters;
  Network(this.url, this.path, this.parameters);

  Future<dynamic> getJsonData() async {
    var url =
        Uri.https('samples.openweathermap.org', 'data/2.5/weather', parameters);
    http.Response response = await http.get(url);
    if (response.statusCode == 200) {
      String jsonData = response.body;
      var parsingData = jsonDecode(jsonData);
      print(parsingData);
      return parsingData;
    } else {
      print(response.statusCode);
    }
  }
}

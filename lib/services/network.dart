import 'package:http/http.dart' as http;
import 'dart:convert';

class Network {
  final String urlLink;
  final String path;
  final Map<String, dynamic> parameters;

  Network(this.urlLink, this.path, this.parameters);

  Future<dynamic> getJsonData() async {
    var url = Uri.https(urlLink, path, parameters);
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

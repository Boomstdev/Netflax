import 'package:http/http.dart' as http;

class JsonNetwork {

  JsonNetwork(this.url);

  final String url;

  Future getData() async {
    http.Response response = await http.get(url);
    print(response.statusCode);

    if (response.statusCode == 200) {
      var data = response.body;
      print(data);
      return data;
    } else {
      print(response.statusCode);
    }
  }
}
import 'package:http/http.dart' as http;


import 'dart:convert';

class NetworkHelper {
  String url;
  NetworkHelper(this.url);

  Future<void> getData() async {
    var endpoint = Uri.parse(url);
    var response = await http.post(endpoint);
    if(response.statusCode == 200) {
      var data = response.body;
      return jsonDecode(data);
    } else {
      print(response.statusCode);
    }


}
}
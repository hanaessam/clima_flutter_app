import 'package:http/http.dart' as http;
import '../services/location.dart';

import 'dart:convert';

class NetworkHelper {
  var url;
  NetworkHelper(this.url);

  Future<void> getData() async {
    Uri.parse(url);
    http.Response response = await http.get(url);
    if(response.statusCode == 200) {
      String data = response.body;
      return jsonDecode(data);
    } else {
      print(response.statusCode);
    }


}
}
import 'dart:convert';

import 'package:http/http.dart' as http;

class API {
  static var client = http.Client();

  static Future<dynamic> getUsers() async {
    Map<String, String> requestHeader = {"Content-Tyoe": "pplication/json"};

    var url = Uri.https("reqres.in", "/api/users/2");
    var response = await client.get(url, headers: requestHeader);

    if (response.statusCode == 200) {
      var data = jsonDecode(response.body);
      print(data["data"]);
    } else {
      return null;
    }
  }
}

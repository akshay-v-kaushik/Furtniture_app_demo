import 'dart:convert';

import 'package:http/http.dart' as http;

import '../Models/model.dart';

Future<List<Model>> fetchModel() async {
  Uri apiURL = Uri.parse(
      "https://63655633f711cb49d1fbb393.mockapi.io/internship_demo/modeltype");
  final response = await http.get(apiURL);

  if (response.statusCode == 200) {
    // If the server returned a 200 OK response, then parse the JSON.
    List<Model> products = (json.decode(response.body) as List)
        .map((data) => Model.fromJson(data))
        .toList();
    // Return list of products
    return products;
  } else {
    // If the server did not respond a 200 OK, then throw an exception.
    throw Exception('Failed to load');
  }
}

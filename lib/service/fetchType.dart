import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:internshipp_demo/Models/types.dart';

// Fetch our Categories from API
Future<List<Types>> fetchType() async {
  Uri apiUrl = Uri.parse(
      "https://63655633f711cb49d1fbb393.mockapi.io/internship_demo/modelcategory");

  final response = await http.get(apiUrl);

  if (response.statusCode == 200) {
    // If the server returned a 200 OK response, then parse the JSON.

    List<Types> categories = (json.decode(response.body) as List)
        .map((data) => Types.fromJson(data))
        .toList();
// It retuen list of categories
    return categories;
  } else {
    // If the server did not respond a 200 OK, then throw an exception.
    throw Exception('Failed to load');
  }
}

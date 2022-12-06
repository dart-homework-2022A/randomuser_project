import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:randomuser_project/models/User.dart';

final String baseUrl = "https://randomuser.me/api/";

Future<User> getData() async {
  String firstName = 'NoName';
  // Define the URL
  Uri url = Uri.parse(baseUrl);
  // Make the request
  http.Response response = await http.get(url);

  // Check the status code

  // If the call to the server was successful, parse the JSON
  Map data = json.decode(response.body);
  // print(data);
  User user = User.fromJson(data['results'][0]);

  return user;
}

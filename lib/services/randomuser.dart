import 'dart:convert';
import 'package:http/http.dart' as http;

final String baseUrl = "https://randomuser.me/api/";

Future getData() async {
  String firstName = 'NoName';
  // Define the URL
  Uri url = Uri.parse(baseUrl);
  // Make the request
  http.Response response = await http.get(url);

  // Check the status code

  // If the call to the server was successful, parse the JSON
  Map data = json.decode(response.body);
  // print(data);

  // // Get user name from JSON
  if (response.statusCode == 200) {
    firstName = data['results'][0]['name']['first'];
  }
  return firstName;
}

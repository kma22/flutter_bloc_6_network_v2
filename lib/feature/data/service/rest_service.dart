import 'dart:convert';
import 'package:http/http.dart' as http;

class RestService {
  Future<List> getUser() async {
    final response =
        await http.get('https://jsonplaceholder.typicode.com/users');
    if (response.statusCode == 200) {
      final body = json.decode(response.body);
      return body;
    } else {
      throw Exception(
          'An error occurred while loading character data from the server.');
    }
  }
}

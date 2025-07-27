import 'dart:convert';
import 'package:http/http.dart' as http;

class ApiService {
  static const _baseUrl = 'https://jsonplaceholder.typicode.com';
  Future<List<dynamic>> get(String endpoint) async {
    final response = await http.get(Uri.parse('$_baseUrl/$endpoint'));
    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      throw Exception("Erreur API");
    }
  }
}
import 'dart:convert';
import 'package:http/http.dart' as http;

class AuthService {
  // Replace with your backend URL
  static const String baseUrl = "http://127.0.0.1:8000/api";

  // Login function
  static Future<Map<String, dynamic>> login({
    required String email,
    required String password,
    required String role,
  }) async {
    final String url = "$baseUrl/login/";

    Map<String, dynamic> body = {
      "email": email,
      "password": password,
      "role": role,
    };

    try {
      var response = await http.post(
        Uri.parse(url),
        headers: {"Content-Type": "application/json"},
        body: jsonEncode(body),
      );

      if (response.statusCode == 200) {
        // return decoded JSON
        return jsonDecode(response.body);
      } else {
        // return error
        return {"error": "Invalid credentials"};
      }
    } catch (e) {
      return {"error": "Error connecting to server"};
    }
  }
}

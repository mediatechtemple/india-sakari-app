import 'dart:convert';
import 'package:http/http.dart' as http;

class ApiService {
  final String baseUrl = "https://yourapi.com"; // ✅ Change to your API URL

  Future<Map<String, dynamic>> submitAdvertiseForm(String name, String email, String message) async {
    final url = Uri.parse('$baseUrl/advertise'); // ✅ Adjust the API endpoint

    try {
      final response = await http.post(
        url,
        headers: {"Content-Type": "application/json"},
        body: jsonEncode({"name": name, "email": email, "message": message}),
      );

      if (response.statusCode == 200) {
        return jsonDecode(response.body);
      } else {
        return {"error": "Submission failed. Please try again."};
      }
    } catch (e) {
      return {"error": "Error: $e"};
    }
  }
}

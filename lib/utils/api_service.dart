import 'dart:convert';
import 'package:http/http.dart' as http;
import '../utils/api_constants.dart';

class ApiService {
  Future<Map<String, dynamic>> submitAdvertiseForm(
      String name, String email, String message) async {
    final url = Uri.parse(ApiConstants.baseUrl + ApiConstants.advertiseEndpoint);

    try {
      final response = await http.post(
        url,
        headers: ApiConstants.headers,
        body: jsonEncode({
          "name": name,
          "email": email,
          "message": message,
        }),
      );

      if (response.statusCode == 200) {
        return jsonDecode(response.body);
      } else {
        throw Exception("Failed to submit form: ${response.body}");
      }
    } catch (e) {
      throw Exception("Error: $e");
    }
  }
}

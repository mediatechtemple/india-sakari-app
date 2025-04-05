import 'dart:convert';
import 'package:http/http.dart' as http;
import '../modals/OldPaperModel.dart';

class OldPaperService {
  final String apiUrl = 'https://backend.indiasarkarinaukri.com/oldpaper/modified'; // Replace with your actual API URL.

  Future<List<OldPaper>> fetchOldPaper() async {
    final response = await http.get(Uri.parse(apiUrl));

    if (response.statusCode == 200) {
      final List<dynamic> data = json.decode(response.body);
      return data.map((item) => OldPaper.fromJson(item)).toList();
    } else {
      throw Exception('Failed to load Old Papers ');
    }
  }
}

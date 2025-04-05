import 'dart:convert';
import 'package:http/http.dart' as http;
import '../modals/BooksModel.dart';
import '../modals/VideosModel.dart';

class VideosService {
  final String apiUrl = 'https://backend.indiasarkarinaukri.com/video'; // Replace with your actual API URL.

  Future<List<Video>> fetchVideos() async {
    final response = await http.get(Uri.parse(apiUrl));

    if (response.statusCode == 200) {
      final List<dynamic> data = json.decode(response.body);
      return data.map((item) => Video.fromJson(item)).toList();
    } else {
      throw Exception('Failed to load videos');
    }
  }
}

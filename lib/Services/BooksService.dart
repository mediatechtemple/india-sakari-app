import 'dart:convert';
import 'package:http/http.dart' as http;
import '../modals/BooksModel.dart';

class BooksService {
  final String apiUrl = 'https://backend.indiasarkarinaukri.com/book/modified'; // Replace with your actual API URL.

  Future<List<Book>> fetchBooks() async {
    final response = await http.get(Uri.parse(apiUrl));

    if (response.statusCode == 200) {
      final List<dynamic> data = json.decode(response.body);
      return data.map((item) => Book.fromJson(item)).toList();
    } else {
      throw Exception('Failed to load books');
    }
  }
}

import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:indiasarkarinaukri/modals/NotesModel.dart';
import '../modals/BooksModel.dart';

class NotesService {
  final String apiUrl = 'https://backend.indiasarkarinaukri.com/notes/modified'; // Replace with your actual API URL.

  Future<List<Notes>> fetchNotes() async {
    final response = await http.get(Uri.parse(apiUrl));

    if (response.statusCode == 200) {
      final List<dynamic> data = json.decode(response.body);
      return data.map((item) => Notes.fromJson(item)).toList();
    } else {
      throw Exception('Failed to load notes');
    }
  }
}

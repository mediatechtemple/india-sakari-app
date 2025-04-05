import 'package:get/get.dart';
import '../Services/NotesService.dart';
import '../modals/NotesModel.dart';

class NotesViewModel extends GetxController {
  // List of notes fetched from the API
  var notes = <Notes>[];

  // Filtered list of notes based on the search query
  var filteredNotes = <Notes>[];

  // Loading state
  var isLoading = false.obs;

  // Error message
  var errorMessage = ''.obs;

  // Fetch notes from the API
  void fetchNotes() async {
    isLoading.value = true;
    try {
      // Fetch notes from the NotesService
      notes = await NotesService().fetchNotes();
      filteredNotes = List.from(notes);  // Initially show all notes
      errorMessage.value = ''; // Clear any previous error message
    } catch (e) {
      errorMessage.value = 'Failed to load Notes';
    } finally {
      isLoading.value = false; // Stop loading
    }
  }

  // Method to filter notes based on the search query
  void filterNotes(String query) {
    if (query.isEmpty) {
      // If query is empty, show all notes
      filteredNotes = List.from(notes);
    } else {
      // Otherwise, filter notes by matching the query in title or slug
      filteredNotes = notes.where((note) {
        return note.title.toLowerCase().contains(query.toLowerCase()) ||
            note.slug.toLowerCase().contains(query.toLowerCase());
      }).toList();
    }
    update();  // Notify GetX to update the UI
  }
}

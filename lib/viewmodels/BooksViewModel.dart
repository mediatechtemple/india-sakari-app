import 'package:get/get.dart';
import '../Services/BooksService.dart';
import '../modals/BooksModel.dart';

class BooksViewModel extends GetxController {

  // Use RxList for reactive list of books
  var books = <Book>[].obs; // RxList<Book> instead of List<Book>

  // Loading state
  var isLoading = false.obs;

  // Error message
  var errorMessage = ''.obs;

  // Fetch books from the API
  void fetchBooks() async {
    isLoading.value = true;
    try {
      // Fetch the list of books from the service
      books.value = await BooksService().fetchBooks(); // Assign to books.value
      errorMessage.value = ''; // Reset error message if successful
    } catch (e) {
      // Handle error if fetching fails
      errorMessage.value = 'Failed to load books';
    } finally {
      // Set loading state to false
      isLoading.value = false;
    }
  }

  // Filter books based on a search query
  void filterBooks(String query) {
    if (query.isEmpty) {
      // If the query is empty, fetch all books again
      fetchBooks();
    } else {
      // Filter the books based on the query
      books.value = books.where((book) {
        return book.title.toLowerCase().contains(query.toLowerCase()) ||
            book.slug.toLowerCase().contains(query.toLowerCase());
      }).toList();
    }
  }
}

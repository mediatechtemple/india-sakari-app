import 'package:get/get.dart';
import '../Services/OldPaperService.dart';
import '../modals/OldPaperModel.dart';

class OldPaperViewModel extends GetxController {

  // List of old papers
  var oldpaper = <OldPaper>[];

  // Filtered list of old papers (reactive)
  var filteredOldPaper = <OldPaper>[].obs;

  // Loading state
  var isLoading = false.obs;

  // Error message
  var errorMessage = ''.obs;

  // Fetch old papers from the API
  void fetchOldPaper() async {
    isLoading.value = true;
    try {
      oldpaper = await OldPaperService().fetchOldPaper();
      errorMessage.value = '';
      filteredOldPaper.value = oldpaper;  // Initially, show all papers
    } catch (e) {
      errorMessage.value = 'Failed to load Old Papers';
    } finally {
      isLoading.value = false;
    }
  }

  // Filter old papers based on the search query
  void filterOldPaper(String query) {
    if (query.isEmpty) {
      filteredOldPaper.value = oldpaper;  // If the query is empty, show all papers
    } else {
      filteredOldPaper.value = oldpaper.where((oldPaper) {
        return oldPaper.title.toLowerCase().contains(query.toLowerCase()) ||
            oldPaper.slug.toLowerCase().contains(query.toLowerCase());
      }).toList();
    }
  }
}

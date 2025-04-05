import 'package:get/get.dart';
//import 'package:indiasarkarinaukri/Services/JobsService.dart';
//import 'package:indiasarkarinaukri/modals/JobsModel.dart';
import 'package:indiasarkarinaukri/modals/ResultPageModel.dart';

import '../Services/ResultPageService.dart';

class ResultsPageViewModel extends GetxController {
  var isLoading = true.obs;
  var resultpage = <ResultPageModel>[].obs;  // All fetched jobs
  var filteredResult = <ResultPageModel>[].obs;  // Filtered list of jobs

  final ResultPageService resultpageservice = ResultPageService();

  // Fetch jobs from the JobsService
  Future<void> fetchResultPage() async {
    try {
      isLoading(true);  // Show loading indicator
      var result = await resultpageservice.fetchResultPage();
      print("Result fetched successfully:");
      print(result);
      resultpage.assignAll(result);  // Assign the fetched jobs to the jobs list
      filteredResult.assignAll(result);  // Initially, display all jobs
    } catch (e) {
      print("Error fetching jobs: $e");
    } finally {
      isLoading(false);  // End loading
    }
  }

  // Search functionality to filter jobs based on query
  void searchResults(String query) {
    if (query.isEmpty) {
      // If the query is empty, show all jobs
      filteredResult.assignAll(resultpage);
    } else {
      // Filter the jobs based on the query (categoryName or type)
      filteredResult.assignAll(resultpage.where((result) {
        return result.categoryName.toLowerCase().contains(query.toLowerCase()) ||
            result.type.toLowerCase().contains(query.toLowerCase());
      }).toList());
    }
  }
}

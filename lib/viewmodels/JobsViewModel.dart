import 'package:get/get.dart';
import 'package:indiasarkarinaukri/Services/JobsService.dart';
import 'package:indiasarkarinaukri/modals/JobsModel.dart';

class JobsViewModel extends GetxController {
  var isLoading = true.obs;
  var jobs = <JobsModel>[].obs;  // All fetched jobs
  var filteredJobs = <JobsModel>[].obs;  // Filtered list of jobs
  var isArchivedFilter = false.obs;  // To track if we want to show archived jobs

  final JobsService jobsService = JobsService();

  // Fetch jobs from the JobsService
  Future<void> fetchJobs() async {

    try {
      isLoading(true);  // Show loading indicator
      var result = await jobsService.fetchJobs();

      print("Jobs fetched successfully:");
      print(result);
      jobs.assignAll(result);  // Assign the fetched jobs to the jobs list
      applyFilters();  // Apply any active filters (like archived filter)
    } catch (e) {
      print("Error fetching jobs: $e");
    } finally {
      isLoading(false);  // End loading
    }
  }

  // Function to apply all active filters (like archived filter)
  void applyFilters() {
    List<JobsModel> filteredList = List.from(jobs);

    // Apply Archived filter if active
    if (isArchivedFilter.value) {
      filteredList = filteredList.where((job) => job.isArchived).toList();
    }

    // Update the filtered jobs list
    filteredJobs.assignAll(filteredList);
  }

  // Search functionality to filter jobs based on query and filter type
  void searchJobs(String query, String filterType) {
    if (query.isEmpty) {
      // If the query is empty, show all jobs after applying archived filter
      applyFilters();
    } else {
      // Filter the jobs based on the query and filter type
      filteredJobs.assignAll(jobs.where((job) {
        switch (filterType) {
          case 'title':
            return job.title.toLowerCase().contains(query.toLowerCase());
          case 'category':
            return job.categoryName.toLowerCase().contains(query.toLowerCase());
          case 'department':
            return job.department.toLowerCase().contains(query.toLowerCase());
          case 'education':
            return job.education.toLowerCase().contains(query.toLowerCase());
          default:
            return false;
        }
      }).toList());
    }
  }

  // Toggle archived jobs filter
  void toggleArchivedFilter(bool isActive) {
    isArchivedFilter.value = isActive;
    applyFilters();  // Reapply filters based on the active state
  }
}

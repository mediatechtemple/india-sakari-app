import 'package:get/get.dart';
import '../Services/JobPortalService.dart';
import '../modals/JobsPortalModel.dart';

class JobPortalViewModel extends GetxController {
  var isLoading = true.obs;
  var jobportal = JobPortalModel().obs;
//  var filteredJobPortal = <JobPortalModel>[].obs;

  final JobPortalService jobportalpageservice = JobPortalService();

  // Fetch job portal data based on the provided slug
  Future<void> JobPortalPage(String slug) async {
    try {
      isLoading(true); // Show loading state
      var result = await jobportalpageservice.fetchjobportal(slug); // Fetch the single job portal

      print("JobPortal fetched successfully");
      print(result.title); // Log the title of the job portal

      // Assign the fetched data to the variable
      jobportal.value = result;  // Assign the single job portal object
    } catch (e) {
      // Handle any error that occurs during fetching the job portal
      print("Error fetching job portal: $e");
    } finally {
      isLoading(false); // Hide loading state after data is loaded or in case of error
    }
  }

// Search functionality to filter jobs based on the query
// void searchJobPortal(String query) {
//   if (query.isEmpty) {
//     // If the search query is empty, reset the filtered list to show all jobs
//     filteredJobPortal.assignAll(jobportalpage);
//   } else {
//     // Filter job portals based on category or title matching the query
//     filteredJobPortal.assignAll(jobportalpage.where((jobportal) {
//       return jobportal.categoryId.toString().toLowerCase().contains(query.toLowerCase()) ||
//           jobportal.title.toLowerCase().contains(query.toLowerCase());
//     }).toList());
//   }
// }
}

import 'package:get/get.dart';
import '../Services/AdmissionPageService.dart';
import '../modals/AdmissionPageModel.dart';

class AdmissionPageViewModel extends GetxController {
  var isLoading = true.obs;
  var admissionpage = <AdmissionPageModel>[].obs;
  var filteredAdmissions = <AdmissionPageModel>[].obs; // Store the filtered list

  final AdmissionPageService admissionpageservice = AdmissionPageService();

  // Fetch admission data
  Future<void> fetchAdmissionPage() async {
    try {
      isLoading(true);
      var result = await admissionpageservice.fetchAdmissionPage();
      print("Admissions fetched successfully:");
      print(result);
      admissionpage.assignAll(result);
      filteredAdmissions.assignAll(result); // Initially show all admissions
    } catch (e) {
      print("Error fetching admissions: $e");
    } finally {
      isLoading(false); // End loading
    }
  }

  // Search functionality to filter admissions based on query and field type
  void searchAdmissions(String query, String filterType) {
    if (query.isEmpty) {
      // If the query is empty, show all admissions
      filteredAdmissions.assignAll(admissionpage);
    } else {
      // Filter admissions based on the selected filter type and query
      filteredAdmissions.assignAll(admissionpage.where((admission) {
        switch (filterType) {
          case 'location':
            return admission.location.toLowerCase().contains(query.toLowerCase());
          case 'category':
            return admission.categoryName.toLowerCase().contains(query.toLowerCase());
          case 'department':
            return admission.department.toLowerCase().contains(query.toLowerCase());
          case 'passedEducation':
            return admission.passedEducation.toLowerCase().contains(query.toLowerCase());
          case 'currentCourse':
            return admission.currentCourse.toLowerCase().contains(query.toLowerCase());
          case 'university':
            return admission.university.toLowerCase().contains(query.toLowerCase());
          default:
            return false;
        }
      }).toList());
    }
  }
}

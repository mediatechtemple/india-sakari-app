import 'package:get/get.dart';
import '../Services/AdmissionPageService.dart';
import '../Services/AdmitCardPageServices.dart';
import '../modals/AdmissionPageModel.dart';
import '../modals/AdmitCardPageModel.dart';

class AdmitCardPageViewModel extends GetxController {
  var isLoading = true.obs;
  var admitcardpage = <AdmitCardPageModel>[].obs;
  var filteredAdmitCard = <AdmitCardPageModel>[].obs; // Store the filtered list

  final AdmitCardPageService admitcardpageservice = AdmitCardPageService();

  // Fetch admission data
  Future<void> fetchAdmitCardPage() async {
    try {
      isLoading(true);
      var result = await admitcardpageservice.fetchAdmitCard();
      print("AdmitCard fetched successfully:");
      print(result);
      admitcardpage.assignAll(result);
      filteredAdmitCard.assignAll(result); // Initially show all admissions
    } catch (e) {
      print("Error fetching admitcard: $e");
    } finally {
      isLoading(false); // End loading
    }
  }

  // Search functionality to filter admissions based on query
  void searchAdmitCard(String query) {
    if (query.isEmpty) {
      // If the query is empty, show all admissions
      filteredAdmitCard.assignAll(admitcardpage);
    } else {
      // Filter admissions based on name or category
      filteredAdmitCard.assignAll(admitcardpage.where((admitcard) {
        return admitcard.categoryName.toLowerCase().contains(query.toLowerCase()) ||  // Assuming 'categoryName' is a field
            admitcard.slug.toLowerCase().contains(query.toLowerCase()); // Assuming 'slug' is a field
      }).toList());
    }
  }
}

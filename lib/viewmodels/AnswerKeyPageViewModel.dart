import 'package:get/get.dart';
//import '../Services/AdmissionPageService.dart';
//import '../Services/AdmitCardPageServices.dart';
//import '../modals/AdmissionPageModel.dart';
//import '../modals/AdmitCardPageModel.dart';
import '../Services/AnswerKeyPageServices.dart';
import '../modals/AdmitCardPageModel.dart';
import '../modals/AnswerKeyPageModel.dart';

class AnswerKeyPageViewModel extends GetxController {
  var isLoading = true.obs;
  var answerkeypage = <AnswerKeyPageModel>[].obs;
  var filteredAnswerKey = <AnswerKeyPageModel>[].obs; // Store the filtered list

  final AnswerKeyPageService answerkeypageservice = AnswerKeyPageService();

  // Fetch admission data
  Future<void> fetchAnswerKeyPage() async {
    try {
      isLoading(true);
      var result = await answerkeypageservice.fetchAnswerKey();
      print("AnswerKey fetched successfully:");
      print(result);
      answerkeypage.assignAll(result);
      filteredAnswerKey.assignAll(result); // Initially show all admissions
    } catch (e) {
      print("Error fetching answerkey: $e");
    } finally {
      isLoading(false); // End loading
    }
  }

  // Search functionality to filter admissions based on query
  void searchAnswerKey(String query) {
    if (query.isEmpty) {
      // If the query is empty, show all admissions
      filteredAnswerKey.assignAll(answerkeypage);
    } else {
      // Filter admissions based on name or category
      filteredAnswerKey.assignAll(answerkeypage.where((answerkey) {
        return answerkey.categoryName.toLowerCase().contains(query.toLowerCase()) ||  // Assuming 'categoryName' is a field
            answerkey.slug.toLowerCase().contains(query.toLowerCase()); // Assuming 'slug' is a field
      }).toList());
    }
  }
}

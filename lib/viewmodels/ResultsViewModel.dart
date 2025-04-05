
import 'package:get/get.dart';
import 'package:indiasarkarinaukri/Services/LatestJobService.dart';
import 'package:indiasarkarinaukri/modals/LatestJobs.dart';
import 'package:indiasarkarinaukri/modals/ResultsModel.dart';

import '../Services/ResultsService.dart';

class ResultsViewModel extends GetxController{

  var isLoading= true.obs;
  var results=<ResultsModal>[].obs;

  final ResultsService resultsService=ResultsService();

  Future<void> fetchLatestResluts()async{

    try{
      isLoading(true);
      var result=await resultsService.fetchResults();
      print("ffffffffffffffffffffffffffff");
      print(result.toString());
      results.assignAll(result);
    }
    catch (e) {
      print("Error fetching posts: $e");
    } finally {
      isLoading(false); // End loading
    }
  }
}
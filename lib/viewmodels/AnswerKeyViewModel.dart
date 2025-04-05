
import 'package:get/get.dart';
import 'package:indiasarkarinaukri/Services/AnswerKeyService.dart';
import 'package:indiasarkarinaukri/Services/AnswerKeyService.dart';
import 'package:indiasarkarinaukri/Services/AnswerKeyService.dart';
import 'package:indiasarkarinaukri/Services/LatestJobService.dart';
import 'package:indiasarkarinaukri/modals/AnswerKeyModel.dart';
import 'package:indiasarkarinaukri/modals/LatestJobs.dart';
import 'package:indiasarkarinaukri/modals/ResultsModel.dart';

import '../Services/ResultsService.dart';

class AnswerKeyViewModel extends GetxController{

  var isLoading= true.obs;
  var ansKey=<AnswerKeyModel>[].obs;

  final AnswerKeyService answerKeyService=AnswerKeyService();

  Future<void> fetchAnsKey()async{

    try{
      isLoading(true);
      var result=await answerKeyService.fetchanswerKey();
      ansKey.assignAll(result);
    }
    catch (e) {
      print("Error fetching posts: $e");
    } finally {
      isLoading(false); // End loading
    }
  }
}
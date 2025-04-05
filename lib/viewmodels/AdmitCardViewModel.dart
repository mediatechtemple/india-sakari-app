
import 'package:get/get.dart';
import 'package:indiasarkarinaukri/Services/AdmitCardServices.dart';
import 'package:indiasarkarinaukri/Services/AnswerKeyService.dart';
import 'package:indiasarkarinaukri/Services/AnswerKeyService.dart';
import 'package:indiasarkarinaukri/Services/AnswerKeyService.dart';
import 'package:indiasarkarinaukri/Services/LatestJobService.dart';
import 'package:indiasarkarinaukri/modals/AdmitCardModel.dart';
import 'package:indiasarkarinaukri/modals/AnswerKeyModel.dart';
import 'package:indiasarkarinaukri/modals/LatestJobs.dart';
import 'package:indiasarkarinaukri/modals/ResultsModel.dart';

import '../Services/AdmissionService.dart';
import '../Services/ResultsService.dart';
import '../modals/AdmissionModel.dart';

class AdmitCardViewModel extends GetxController {
  var isLoading = true.obs;
  var admitcard = <AdmitCardModel>[].obs;

  final AdmitCardService admitCardService = AdmitCardService();

  Future<void>fetchadmitcard()async{
    try {
      isLoading(true);
      var result=await admitCardService.fetchadmitcard();
      admitcard.assignAll(result);
    }
    catch (e) {
      print("Error fetching posts: $e");
    } finally {
      isLoading(false); // End loading
    }
  }
}
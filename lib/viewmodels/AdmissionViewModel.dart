
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

class AdmissionViewModel extends GetxController{

  var isLoading= true.obs;
  var admission=<AdmissionModel>[].obs;

  final AdmissionService admissionService=AdmissionService();

  Future<void>fetchadmission()async{
    try{
      isLoading(true);
      var result=await admissionService.fetchadmission();
      admission.assignAll(result);
    }
    catch (e) {
      print("Error fetching posts: $e");
    } finally {
      isLoading(false); // End loading
    }
  }
}
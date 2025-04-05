
import 'package:get/get.dart';
import 'package:indiasarkarinaukri/viewmodels/AnswerKeyViewModel.dart';
import 'package:indiasarkarinaukri/viewmodels/LatestJobsViewModel.dart';

import '../viewmodels/AdmissionPageViewModel.dart';
import '../viewmodels/AdmissionViewModel.dart';
import '../viewmodels/AdmitCardPageViewModel.dart';
import '../viewmodels/AdmitCardViewModel.dart';
import '../viewmodels/AnswerKeyPageViewModel.dart';
import '../viewmodels/AppbarViewModel.dart';
import '../viewmodels/JobPortalViewModel.dart';
import '../viewmodels/JobsViewModel.dart';
import '../viewmodels/ResultPageViewModel.dart';
import '../viewmodels/ResultsViewModel.dart';
import '../viewmodels/TabControllerViewModel.dart';

class LatestJobBinding extends Bindings {
  @override
  void dependencies() {

   Get.put(LatestJobsViewModel());
   Get.put(ResultsViewModel());
   Get.put(AnswerKeyViewModel());
   Get.put(AdmitCardViewModel());
   Get.put(AdmissionViewModel());
   Get.put(TabControllerViewModel());
   Get.put(JobsViewModel());
   Get.put(AdmissionPageViewModel());
   Get.put(AdmitCardPageViewModel());
   Get.put(ResultsPageViewModel());
   Get.put(AnswerKeyPageViewModel());
   Get.put(AppbarViewModel());


  }

}
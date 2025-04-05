
import 'package:get/get.dart';
import 'package:indiasarkarinaukri/viewmodels/AppNotificationViewModel.dart';
import 'package:indiasarkarinaukri/viewmodels/ResultPageViewModel.dart';


class ResultsPageBinding extends Bindings {
  @override
  void dependencies() {

   Get.put(ResultsPageViewModel());
  }

}

import 'package:get/get.dart';
import 'package:indiasarkarinaukri/viewmodels/AppNotificationViewModel.dart';


class AppNotificationBinding extends Bindings {
  @override
  void dependencies() {

   Get.put(AppNotificationViewModel());
  }

}
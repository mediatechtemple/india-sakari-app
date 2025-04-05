
import 'package:get/get.dart';
import 'package:indiasarkarinaukri/viewmodels/AppNotificationViewModel.dart';
import 'package:indiasarkarinaukri/viewmodels/ResultPageViewModel.dart';

import '../viewmodels/JobPortalViewModel.dart';


class JobPortalBinding extends Bindings {
  @override
  void dependencies() {
    // Use `Get.lazyPut` to prevent the ViewModel from being deleted when the page is popped
    Get.lazyPut(() => JobPortalViewModel());
  }
}

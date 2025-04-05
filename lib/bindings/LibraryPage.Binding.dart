
import 'package:get/get.dart';
import 'package:indiasarkarinaukri/viewmodels/AppNotificationViewModel.dart';

import '../viewmodels/LibraryPageViewModel.dart';


class LibraryPageBinding extends Bindings {
  @override
  void dependencies() {

    Get.put(LibraryPageViewModel());
  }

}
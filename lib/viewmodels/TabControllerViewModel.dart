import 'package:get/get.dart';
import 'package:indiasarkarinaukri/routes/app_routes.dart';

import '../views/Admission.dart';
import '../views/Library.dart';

class TabControllerViewModel extends GetxController {
  var currentIndex = 0.obs;
  
  void changeTab(int index) {
    currentIndex.value = index;

    //  navigation
    if (index == 0) {
      Get.offNamed(AppRoutes.home);

  
    } else if (index == 1) {

    } else if (index == 2) {
      print("clickk");
      Get.to(AppRoutes.admissionPage);

    } else if (index == 3) {
      print("clickkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkk");
      Get.to(AppRoutes.jobsPage);
    } else if (index == 4) {
      Get.to(AppRoutes.mockTest);

    }else if (index == 5) {
      Get.toNamed(AppRoutes.libraryPage);




    }
  }

}

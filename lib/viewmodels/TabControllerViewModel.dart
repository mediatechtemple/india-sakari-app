import 'package:get/get.dart';
import 'package:indiasarkarinaukri/routes/app_routes.dart';

class TabControllerViewModel extends GetxController {
  var currentIndex = 0.obs;
  
  void changeTab(int index) {
    currentIndex.value = index;

    //  navigation
    if (index == 0) {
      Get.offNamed(AppRoutes.home);

  
    } else if (index == 1) {
     
      
    } else if (index == 2) {
      
    } else if (index == 3) {
     
    } else if (index == 4) {
      Get.offNamed(AppRoutes.mockTest);

    }else if (index == 5) {

    }else  {
     
    }
  }

}

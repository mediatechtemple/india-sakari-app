import 'package:get/get.dart';

import '../themes/dark_theme.dart';
import '../themes/light_theme.dart';

class ThemeViewModel extends GetxController{

  var isDarkMode=false.obs;


  void toggleTheme(){
    isDarkMode.value = !isDarkMode.value;
    Get.changeTheme(isDarkMode.value ? darkTheme : lightTheme);
  }
}
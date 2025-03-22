import 'package:get/get.dart';

import '../bindings/advertise_with_us_binding.dart';
import '../views/advertise_with_us.dart';

class AppPages {
  static final routes = [
    GetPage(
      name: '/advertiseWithUsPage',
      page: () => AdvertiseWithUsPage(),
      binding: AdvertiseWithUsBinding(),
    ),
    // GetPage(
    //   name: '/home',
    //   page: () => HomePage(),
    //   binding: HomeBinding(),
    // ),
  ];
}

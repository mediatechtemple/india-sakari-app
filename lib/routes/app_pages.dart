import 'package:get/get.dart';

import '../bindings/LatestJobBinding.dart';
import '../bindings/advertise_with_us_binding.dart';
import '../views/HomeScreen.dart';
import '../views/advertise_with_us.dart';
import 'app_routes.dart';

class AppPages {
  static final routes = [
    GetPage(
      name: AppRoutes.advertisementpage,
      page: () => AdvertiseWithUsPage(),
      binding: AdvertiseWithUsBinding(),
    ),
    GetPage(
      name: AppRoutes.home, // Use route names from AppRoutes
      page: () => Homescreen(),
      binding: LatestJobBinding(),  // Binding for dependencies
    ),
  ];
}

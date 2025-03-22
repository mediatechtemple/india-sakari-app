import 'package:get/get.dart';

import '../viewmodels/advertise_with_us_viewmodal.dart';


class AdvertiseWithUsBinding extends Bindings {
  @override
  void dependencies() {
    // Here, we're binding AdvertiseWithUsController to the GetX dependency injection system
    Get.lazyPut<AdvertiseWithUsController>(() => AdvertiseWithUsController());
  }
}

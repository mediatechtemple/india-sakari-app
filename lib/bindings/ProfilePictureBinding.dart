import 'package:get/get.dart';

import '../viewmodels/ProfilePictureViewModel.dart';
import '../viewmodels/advertise_with_us_viewmodal.dart';


class ProfilePictureBinding extends Bindings {
  @override
  void dependencies() {
    // Here, we're binding AdvertiseWithUsController to the GetX dependency injection system
    Get.lazyPut<ProfilePictureController>(() => ProfilePictureController());
  }
}
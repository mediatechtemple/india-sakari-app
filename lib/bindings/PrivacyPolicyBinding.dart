import 'package:get/get.dart';

import '../viewmodels/PrivacyPolicyViewModel.dart';



class PrivacyPolicyBinding extends Bindings {
  @override
  void dependencies() {

    Get.lazyPut<PrivacyPolicyController>(() => PrivacyPolicyController());
  }
}
import 'package:get/get.dart';
import '../viewmodels/AdmitCardPortalViewModel.dart'; // Import your ViewModel

class AdmitCardPortalBinding extends Bindings {
  @override
  void dependencies() {
    // Use `Get.lazyPut` to lazily initialize the AdmitCardPortalViewModel
    Get.lazyPut(() => AdmitCardPortalViewModel(
       // Assuming AdmitCardService is already registered in GetX
    ));
  }
}
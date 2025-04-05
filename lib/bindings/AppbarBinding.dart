import 'package:get/get.dart';
import '../Services/AppbarService.dart';  // Import your service class
import '../viewmodels/AppbarViewModel.dart';  // Import your viewmodel class

class AppbarBinding extends Bindings {
  @override
  void dependencies() {


    // Lazily initialize the ViewModel, injecting the ApiServiceModel.
   // Get.lazyPut(() => AppbarViewModel());
    Get.put(AppbarViewModel());
  }
}

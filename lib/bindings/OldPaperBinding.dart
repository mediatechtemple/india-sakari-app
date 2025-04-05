import 'package:get/get.dart';
import '../Services/OldPaperService.dart';
import '../viewmodels/OldPaperViewModel.dart';

class OldPaperBinding extends Bindings {
  @override
  void dependencies() {
    // Register the OldPaperService and OldPaperViewModel
    Get.lazyPut(() => OldPaperService());
    Get.lazyPut(() => OldPaperViewModel());
  }
}

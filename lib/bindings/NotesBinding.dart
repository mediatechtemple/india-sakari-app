import 'package:get/get.dart';
import '../Services/NotesService.dart';
import '../Services/OldPaperService.dart';
import '../viewmodels/NotesViewModel.dart';
import '../viewmodels/OldPaperViewModel.dart';

class NotesBinding extends Bindings {
  @override
  void dependencies() {
    // Register the OldPaperService and OldPaperViewModel
    Get.lazyPut(() => NotesService());
    Get.lazyPut(() => NotesViewModel());
  }
}

import 'package:get/get.dart';
import '../Services/NotesService.dart';
import '../Services/OldPaperService.dart';
import '../Services/VideosService.dart';
import '../viewmodels/NotesViewModel.dart';
import '../viewmodels/OldPaperViewModel.dart';
import '../viewmodels/VideosViewModel.dart';

class VideosBinding extends Bindings {
  @override
  void dependencies() {
    // Register the OldPaperService and OldPaperViewModel
    Get.lazyPut(() => VideosService());
    Get.lazyPut(() => VideosViewModel());
  }
}

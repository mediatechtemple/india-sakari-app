import 'package:get/get.dart';
import '../Services/BooksService.dart';
import '../viewmodels/BooksViewModel.dart';


class BooksPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => BooksService());
    Get.lazyPut(() => BooksViewModel());
  }
}

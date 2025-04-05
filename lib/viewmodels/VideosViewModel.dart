import 'package:get/get.dart';
import '../Services/VideosService.dart';
import '../modals/VideosModel.dart';

class VideosViewModel extends GetxController {
  // List of videos
  var videos = <Video>[];

  // Loading state
  var isLoading = false.obs;

  // Error message
  var errorMessage = ''.obs;

  // Fetch videos from the API
  void fetchVideos() async {
    isLoading.value = true;
    try {
      // Fetch videos from the VideosService
      videos = await Get.find<VideosService>().fetchVideos();
      errorMessage.value = ''; // Clear any previous error message
    } catch (e) {
      errorMessage.value = 'Failed to load Videos';
    } finally {
      isLoading.value = false; // Stop loading
    }
  }
}

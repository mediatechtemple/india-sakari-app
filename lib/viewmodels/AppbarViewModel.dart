import 'package:get/get.dart';
import '../Services/AppbarService.dart';
  // Import your service
import '../modals/AppbarModel.dart'; // Import the model class

class AppbarViewModel extends GetxController {
  // Declare the necessary variables as Rx (reactive)
  var isLoading = false.obs; // Track loading state
  var errorMessage = ''.obs; // Track error message
  var platforms = <SocialMediaPlatform>[].obs; // List of platforms

  // Instance of AppbarServiceModel
  final AppbarServiceModel _appbarService = AppbarServiceModel();

  // Fetch data from the API and update the state
  Future<void> fetchSocialMediaPlatforms() async {
    try {
      isLoading.value = true; // Set loading to true when fetching data
      errorMessage.value = ''; // Reset error message

      // Fetch the platforms from the service
      List<SocialMediaPlatform> fetchedPlatforms = await _appbarService.fetchSocialMediaPlatforms();

      // Update the platforms list
      platforms.value = fetchedPlatforms;
      print("fioejwrwiofwiuoofiuwwefuiooewhfuiewhuifnwewrnuifnuieenfrewfikwernf");
      print(fetchedPlatforms);
    } catch (e) {
      // If an error occurs, update the error message
      errorMessage.value = 'Failed to fetch data: $e';
    } finally {
      // Ensure loading is set to false after the request completes
      isLoading.value = false;
    }
  }
}

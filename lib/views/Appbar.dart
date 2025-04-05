import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jovial_svg/jovial_svg.dart';
import 'package:url_launcher/url_launcher.dart';

import '../viewmodels/AppbarViewModel.dart';  // For launching URLs
import '../routes/app_routes.dart';  // Assuming you have a route file for navigation

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  final Size preferredSize;

  CustomAppBar({Key? key}) : preferredSize = Size.fromHeight(kToolbarHeight), super(key: key);

  @override
  Widget build(BuildContext context) {
    final appbarViewModel = Get.find<AppbarViewModel>();
    appbarViewModel.fetchSocialMediaPlatforms();

    double screenWidth = MediaQuery.of(context).size.width; // Get screen width

    return AppBar(
      elevation: 4,  // Add elevation to the AppBar
      title: Obx(() {
        if (appbarViewModel.isLoading.value) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircularProgressIndicator(color: Colors.white),
          );
        } else if (appbarViewModel.errorMessage.isNotEmpty) {
          return IconButton(
            icon: Icon(Icons.error),
            onPressed: () {
              Get.snackbar("Error", appbarViewModel.errorMessage.value);
            },
          );
        } else {
          return SingleChildScrollView( // Wrap the Row with SingleChildScrollView
            scrollDirection: Axis.horizontal, // Allow horizontal scrolling
            child: Row(
              children: appbarViewModel.platforms.map((platform) {
                return GestureDetector(
                  onTap: () {
                    _launchURL(platform.url); // Pass the URL of the platform to the _launchURL method
                  },
                  child: SizedBox(
                    height: 40, // Limit the height of the icon
                    width: 40,  // Limit the width of the icon to avoid overflow
                    child: ScalableImageWidget.fromSISource(
                      si: ScalableImageSource.fromSvgHttpUrl(
                        Uri.parse(platform.socialIcon),
                      ),
                    ),
                  ),
                );
              }).toList(),
            ),
          );
        }
      }),
      actions: [
        Row(
          children: [
            // Notification icon
            GestureDetector(
              onTap: () {
                Get.toNamed(AppRoutes.notification); // Navigate to notification page
              },
              child: Material(
                shape: CircleBorder(),
                elevation: 4,
                child: CircleAvatar(
                  backgroundColor: Theme.of(context).brightness == Brightness.dark
                      ? Colors.black54
                      : Colors.white,
                  child: Icon(
                    Icons.notifications_none,
                    color: Theme.of(context).iconTheme.color,
                  ),
                ),
              ),
            ),
            SizedBox(width: screenWidth * 0.02),

            // Profile Picture icon
            GestureDetector(
              onTap: () {
                Get.toNamed(AppRoutes.profilepicturePage); // Navigate to profile picture page
              },
              child: Material(
                shape: CircleBorder(),
                elevation: 4,
                child: CircleAvatar(
                  backgroundColor: Theme.of(context).brightness == Brightness.dark
                      ? Colors.black54
                      : Colors.white,
                  child: Icon(
                    Icons.person_outline,
                    color: Theme.of(context).iconTheme.color,
                  ),
                ),
              ),
            ),
            SizedBox(width: 10),
          ],
        ),
      ],
    );
  }

  // Function to launch the URL using url_launcher package
  void _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      Get.snackbar("Error", "Could not open the link.");
    }
  }
}

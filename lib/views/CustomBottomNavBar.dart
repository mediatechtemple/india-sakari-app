import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../viewmodels/TabControllerViewModel.dart';
import 'package:indiasarkarinaukri/routes/app_routes.dart';

import 'Library.dart'; // Import the AppRoutes file for routing

class CustomBottomNavBar extends StatelessWidget {
  final TabControllerViewModel tabController = Get.find<TabControllerViewModel>();

  CustomBottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return BottomNavigationBar(
        currentIndex: tabController.currentIndex.value,
        onTap: (index) {
          tabController.changeTab(index);  // Change the tab based on index

          // Handle navigation for each item in the bottom navigation bar
          if (index == 5) { // Assuming "Library" is the last item, index 5
            Get.toNamed(AppRoutes.libraryPage); // Navigate to LibraryPage
          } else if (index == 6) { // Assuming "Social Media" is the new last item, index 6
            // Handle navigation to Social Media Page
            //Get.toNamed(AppRoutes.socialMediaPage); // Assuming you have defined this route
          }
        },
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home, color: Colors.black),  // Dark black icon color
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bookmark_border, color: Colors.black),  // Dark black icon color
            label: 'Saved',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_balance_rounded, color: Colors.black),  // Dark black icon color
            label: 'Admission',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.work, color: Colors.black),  // Dark black icon color
            label: 'Jobs',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.assignment_rounded, color: Colors.black),  // Dark black icon color
            label: 'MockTest',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.library_books, color: Colors.black),  // Dark black icon color
            label: 'Library',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.share, color: Colors.black),  // Dark black icon color for Social Media
            label: 'Social Media',
          ),
        ],
      );
    });
  }
}

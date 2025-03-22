import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../viewmodels/TabControllerViewModel.dart';


class CustomBottomNavBar extends StatelessWidget {
  final TabControllerViewModel tabController = Get.find<TabControllerViewModel>();

  CustomBottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(() =>BottomNavigationBar(
      currentIndex: tabController.currentIndex.value,
      onTap: tabController.changeTab,
      items:  const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home,color: Colors.black,),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.bookmark_border),
              label: 'Saved',
            ),
        BottomNavigationBarItem(
          icon: Icon(Icons.account_balance_rounded),
          label: 'Admission',
        ),
             BottomNavigationBarItem(
          icon: Icon(Icons.work),
          label: 'Jobs',
        ),
            BottomNavigationBarItem(
              icon: Icon(Icons.assignment_rounded),
              label: 'MockTest',
            ),

            BottomNavigationBarItem(
              icon: Icon(Icons.library_books),
              label: 'Library',
            ),
          ],
    ) );
  }
}

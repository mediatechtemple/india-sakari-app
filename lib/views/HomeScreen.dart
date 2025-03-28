import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:indiasarkarinaukri/Services/jobService.dart';
import 'package:indiasarkarinaukri/viewmodels/LatestJobsViewModel.dart';
import 'package:indiasarkarinaukri/views/Drawer.dart';
import 'package:indiasarkarinaukri/views/UIHelper.dart';

import '../utils/ScreenUtils.dart';
import '../utils/notification_page.dart';
import '../viewmodels/TabControllerViewModel.dart';
import 'CustomBottomNavBar.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  _HomescreenState createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {

  @override
  Widget build(BuildContext context) {
    TextEditingController c = new TextEditingController();

    double screenWidth = ScreenUtils.getScreenWidth(context);
    double screenHeight = ScreenUtils.getScreenHeight(context);
    final TabControllerViewModel tabController = Get.put(TabControllerViewModel());

    final LatestJobsViewModel jobsViewModel = Get.find();
    jobsViewModel.fetchLatestJob();

    return Scaffold(
      appBar: AppBar(
        title: UIHelper.textview(
          "India Sarkari Naukri",
          FontWeight.bold,
          20,
          GoogleFonts.poppins(),
          Colors.black,
        ),
        elevation: 4,
        actions: [
          Row(
            children: [
              // Notification Icon: Navigate to Notification Page
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const NotificationPage(), // Navigate to Notification Page
                    ),
                  );
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
              SizedBox(width: 10),
              Material(
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
              SizedBox(width: screenWidth * 0.02),
            ],
          ),
        ],
      ),
      drawer: CustomDrawer(),
      body: Obx(() {
      if (jobsViewModel.isLoading.value) {
        return Center(child: CircularProgressIndicator()); // Show loading indicator
      } else if (jobsViewModel.latestjob.isEmpty) {
        return Center(child: Text('No posts available.'));
      } else {
        return
        SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(
                left: 20, right: 20, top: 0, bottom: 0),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                      left: 20, right: 20, top: 10, bottom: 10),
                  child: UIHelper.searchView(c),
                ),
                Row(
                  children: [
                    UIHelper.textview(
                        "Trending", FontWeight.bold, 18, GoogleFonts.poppins(),
                        Colors.black),
                    Spacer(),
                    UIHelper.textview(
                        "View All", FontWeight.bold, 18, GoogleFonts.poppins(),
                        Colors.black),
                  ],
                ),
                SizedBox(height: screenHeight * 0.01),
                UIHelper.slider(),
                SizedBox(height: screenHeight * 0.02),
                UIHelper.cardviewwithlist(
                  title: "Latest Jobs",
                  items: jobsViewModel.latestjob,
                  color: Colors.red,
                ),
                SizedBox(height: screenHeight * 0.02),
                UIHelper.cardviewwithlist(
                  title: "Result",
                  items: jobsViewModel.latestjob,
                  color: Colors.green,
                ),
                SizedBox(height: screenHeight * 0.02),
                UIHelper.cardviewwithlist(
                  title: "Admit Card",
                  items: jobsViewModel.latestjob,
                  color: Colors.green,
                ),
                SizedBox(height: screenHeight * 0.02),
                UIHelper.cardviewwithlist(
                  title: "Admission",
                  items: jobsViewModel.latestjob,
                  color: Colors.red,
                ),
                SizedBox(height: screenHeight * 0.02),

              ],
            ),
          ),
        );
      } }),
      // Bottom Navigation Bar with black icons
      bottomNavigationBar: CustomBottomNavBar()
    );
  }
}

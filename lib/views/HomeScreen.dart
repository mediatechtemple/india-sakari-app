import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
<<<<<<< HEAD
=======
import 'package:indiasarkarinaukri/routes/app_routes.dart';
import 'package:indiasarkarinaukri/viewmodels/AdmissionViewModel.dart';
import 'package:indiasarkarinaukri/viewmodels/AdmitCardViewModel.dart';
import 'package:indiasarkarinaukri/viewmodels/AnswerKeyViewModel.dart';
import 'package:indiasarkarinaukri/viewmodels/LatestJobsViewModel.dart';
import 'package:indiasarkarinaukri/viewmodels/ResultsViewModel.dart';
import 'package:indiasarkarinaukri/views/Appbar.dart';
>>>>>>> f7af307 (Changes in home screen)
import 'package:indiasarkarinaukri/views/Drawer.dart';
import 'package:indiasarkarinaukri/views/UIHelper.dart';
import 'package:text_marquee/text_marquee.dart';
import '../utils/ScreenUtils.dart';
import '../utils/constants.dart';
import '../viewmodels/TabControllerViewModel.dart';
import 'CustomBottomNavBar.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  _HomescreenState createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
<<<<<<< HEAD
  // Default selected index for BottomNavigationBar
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
=======
  final ScrollController _scrollController = ScrollController();

  // Define the search controller here
  TextEditingController searchController = TextEditingController();

  // Scroll up function
  void _scrollUp() {
    _scrollController.animateTo(
      _scrollController.offset - 100, // Adjust the scroll position
      duration: Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
  }

  // Scroll down function
  void _scrollDown() {
    _scrollController.animateTo(
      _scrollController.offset + 100, // Adjust the scroll position
      duration: Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
>>>>>>> f7af307 (Changes in home screen)
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = ScreenUtils.getScreenWidth(context);
    double screenHeight = ScreenUtils.getScreenHeight(context);
<<<<<<< HEAD
    final TabControllerViewModel tabController = Get.put(TabControllerViewModel());
=======

    // Getting instances of the ViewModels using GetX
    final TabControllerViewModel tabController = Get.find();
    final LatestJobsViewModel jobsViewModel = Get.find();
    final ResultsViewModel resultsViewModel = Get.find();
    final AnswerKeyViewModel answerKeyViewModel = Get.find();
    final AdmitCardViewModel admitCardViewModel = Get.find();
    final AdmissionViewModel admissionViewModelViewModel = Get.find();

    // Fetch the data from the ViewModels when the screen is initialized
    jobsViewModel.fetchLatestJob();
    resultsViewModel.fetchLatestResluts();
    answerKeyViewModel.fetchAnsKey();
    admitCardViewModel.fetchadmitcard();
    admissionViewModelViewModel.fetchadmission();

>>>>>>> f7af307 (Changes in home screen)
    return Scaffold(
      appBar: CustomAppBar(),
      drawer: CustomDrawer(),
<<<<<<< HEAD
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20, top: 0, bottom: 0),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
                child: UIHelper.searchView(c),
              ),
              Row(
                children: [
                  UIHelper.textview("Trending", FontWeight.bold, 18, GoogleFonts.poppins(), Colors.black),
                  Spacer(),
                  UIHelper.textview("View All", FontWeight.bold, 18, GoogleFonts.poppins(), Colors.black),
                ],
              ),
              SizedBox(height: screenHeight * 0.01),
              UIHelper.slider(),
              SizedBox(height: screenHeight * 0.02),
              UIHelper.cardviewwithlist(
                title: "Latest Jobs",
                items: [
                  "UPSC Civil Services IAS / IFS Pre Online Form 2025",
                  "CISF Constable Driver Online Form 2025",
                  "Coast Guard Navik GD, DB CGEPT 02/2025 Online",
                  "Railway RRB Group D Online Form 2025",
                  "Bihar Panchayati Raj Gram Katchahary Sachiv Online",
                ],
                color: Colors.red,
              ),
              SizedBox(height: screenHeight * 0.02),
              UIHelper.cardviewwithlist(
                title: "Result",
                items: [
                  "UPSC Civil Services IAS / IFS Pre Online Form 2025",
                  "CISF Constable Driver Online Form 2025",
                  "Coast Guard Navik GD, DB CGEPT 02/2025 Online",
                  "Railway RRB Group D Online Form 2025",
                  "Bihar Panchayati Raj Gram Katchahary Sachiv Online",
                ],
                color: Colors.green,
              ),
              SizedBox(height: screenHeight * 0.02),
              UIHelper.cardviewwithlist(
                title: "Admit Card",
                items: [
                  "UPSC Civil Services IAS / IFS Pre Online Form 2025",
                  "CISF Constable Driver Online Form 2025",
                  "Coast Guard Navik GD, DB CGEPT 02/2025 Online",
                  "Railway RRB Group D Online Form 2025",
                  "Bihar Panchayati Raj Gram Katchahary Sachiv Online",
                ],
                color: Colors.green,
              ),
              SizedBox(height: screenHeight * 0.02),
              UIHelper.cardviewwithlist(
                title: "Admission",
                items: [
                  "UPSC Civil Services IAS / IFS Pre Online Form 2025",
                  "CISF Constable Driver Online Form 2025",
                  "Coast Guard Navik GD, DB CGEPT 02/2025 Online",
                  "Railway RRB Group D Online Form 2025",
                  "Bihar Panchayati Raj Gram Katchahary Sachiv Online",
                ],
                color: Colors.red,
              ),
              SizedBox(height: screenHeight * 0.02),
            ],
          ),
        ),
      ),
      // Bottom Navigation Bar with black icons
      bottomNavigationBar: CustomBottomNavBar()
=======
      body: Obx(() {
        if (jobsViewModel.isLoading.value) {
          return Center(child: CircularProgressIndicator());
        } else if (jobsViewModel.latestjob.isEmpty) {
          return Center(child: Text('No posts available.'));
        } else {
          // Filtering based on search query
          List latestJobs = jobsViewModel.latestjob
              .where((job) => job.jobUrl.toLowerCase().contains(searchController.text.toLowerCase()))
              .toList();
          return Stack(
            children: [
              // Scrollable content
              SingleChildScrollView(
                controller: _scrollController, // Assign the scroll controller here
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    children: [
                      // Search bar for filtering jobs
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 10),
                        child: TextField(
                          controller: searchController,  // Using the searchController here
                          onChanged: (value) {
                            setState(() {}); // Refresh the page when search input changes
                          },
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.search, color: Color(0xFF0D47A1)),
                            hintText: 'What can I help with?',
                            hintStyle: TextStyle(color: Colors.grey),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: BorderSide(color: Color(0xFF0D47A1), width: 1),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: BorderSide(color: Color(0xFF0D47A1), width: 2),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: BorderSide(color: Color(0xFF0D47A1), width: 1),
                            ),
                          ),
                        ),
                      ),
                      // Marquee text
                      Center(
                        child: TextMarquee(
                          jobsViewModel.latestjob.isNotEmpty
                              ? jobsViewModel.latestjob
                              .map((job) => job.jobUrl)
                              .join("  |  ")  // Add a separator between each URL
                              : "No Jobs Available", // Default text when there are no jobs
                          spaceSize: 72,
                          style: const TextStyle(
                              color: Color(0xFF2196F3),
                              fontWeight: FontWeight.w600,
                              fontSize: 24),
                        ),
                      ),
                      // Trending text header
                      Row(
                        children: [
                          UIHelper.textview(
                              "Trending", FontWeight.bold, 18, GoogleFonts.poppins(), Colors.black),
                          Spacer(),
                        ],
                      ),
                      // Latest Jobs Section
                      UIHelper.cardviewwithlistjob(
                        title: "Latest Jobs",
                        items: jobsViewModel.latestjob,
                        color: Constant.bgColor,
                        callback: () {
                          Get.toNamed(AppRoutes.jobsPage);
                        },
                      ),
                      SizedBox(height: screenHeight * 0.02),
                      // Result Section
                      UIHelper.cardviewwithlistresult(
                        title: "Result",
                        items: resultsViewModel.results,
                        color: Constant.bgColor,
                        callback: () {
                          Get.toNamed(AppRoutes.resultPage);
                        },
                      ),
                      SizedBox(height: screenHeight * 0.02),
                      // Answer Key Section
                      UIHelper.cardviewwithlistanswerkey(
                        title: "Answer Key",
                        items: answerKeyViewModel.ansKey,
                        color: Constant.bgColor,
                        callback: () {
                          Get.toNamed(AppRoutes.answerkeyPage);
                        },
                      ),
                      SizedBox(height: screenHeight * 0.02),
                      // Admit Card Section
                      UIHelper.cardviewwithlistadmitcard(
                        title: "Admit Card",
                        items: admitCardViewModel.admitcard,
                        color: Constant.bgColor,
                        callback: () {
                          Get.toNamed(AppRoutes.admitcardPage);
                        },
                      ),
                      SizedBox(height: screenHeight * 0.02),
                      // Admission Section
                      UIHelper.cardviewwithlistadmission(
                        title: "Admission",
                        items: admissionViewModelViewModel.admission,
                        color: Constant.bgColor,
                        callback: () {
                          Get.toNamed(AppRoutes.admissionPage);
                        },
                      ),
                      SizedBox(height: screenHeight * 0.02),
                    ],
                  ),
                ),
              ),
              // Scroll Up Arrow Button
              Positioned(
                top: 20,
                right: 30,
                child: IconButton(
                  icon: Icon(Icons.arrow_upward),
                  onPressed: _scrollUp,
                  iconSize: 40,
                  color: Colors.white,
                ),
              ),
              // Scroll Down Arrow Button
              Positioned(
                bottom: 20,
                right: 30,
                child: IconButton(
                  icon: Icon(Icons.arrow_downward),
                  onPressed: _scrollDown,
                  iconSize: 40,
                  color: Colors.white,
                ),
              ),
            ],
          );
        }
      }),
      bottomNavigationBar: CustomBottomNavBar(),
>>>>>>> f7af307 (Changes in home screen)
    );
  }
}

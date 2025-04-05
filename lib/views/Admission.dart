import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../utils/constants.dart';
import '../viewmodels/AdmissionPageViewModel.dart';
import 'CustomBottomNavBar.dart';
import 'UIHelper.dart'; // Import necessary for Flutter widgets

class AdmissionPage extends StatelessWidget {
  const AdmissionPage({super.key});

  @override
  Widget build(BuildContext context) {
    final AdmissionPageViewModel admissionPageViewModel = Get.find();
    admissionPageViewModel.fetchAdmissionPage();

    return Obx(() {
      return Scaffold(
        appBar: AppBar(
          title: const Text("Admission"),
        ),
        body: SingleChildScrollView(
          child: SizedBox(
            width: double.infinity,
            child: Column(
              children: [
                // First Row: Location and Category Search Filters
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // Location Search
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(right: 8.0),
                          child: TextField(
                            onChanged: (query) {
                              admissionPageViewModel.searchAdmissions(query, 'location');
                            },
                            decoration: InputDecoration(
                              hintText: 'Location',
                              prefixIcon: Icon(Icons.location_on),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
                            ),
                          ),
                        ),
                      ),
                      // Category Search
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: TextField(
                            onChanged: (query) {
                              admissionPageViewModel.searchAdmissions(query, 'category');
                            },
                            decoration: InputDecoration(
                              hintText: 'Category',
                              prefixIcon: Icon(Icons.category),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                // Second Row: Department and Passed Education Search Filters
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // Department Search
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(right: 8.0),
                          child: TextField(
                            onChanged: (query) {
                              admissionPageViewModel.searchAdmissions(query, 'department');
                            },
                            decoration: InputDecoration(
                              hintText: 'Department',
                              prefixIcon: Icon(Icons.business),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
                            ),
                          ),
                        ),
                      ),
                      // Passed Education Search
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: TextField(
                            onChanged: (query) {
                              admissionPageViewModel.searchAdmissions(query, 'passedEducation');
                            },
                            decoration: InputDecoration(
                              hintText: 'Passed Education',
                              prefixIcon: Icon(Icons.school),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                // Third Row: Current Course and University Search Filters
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // Current Course Search
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(right: 8.0),
                          child: TextField(
                            onChanged: (query) {
                              admissionPageViewModel.searchAdmissions(query, 'currentCourse');
                            },
                            decoration: InputDecoration(
                              hintText: 'Current Course',
                              prefixIcon: Icon(Icons.class_),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
                            ),
                          ),
                        ),
                      ),
                      // University Search
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: TextField(
                            onChanged: (query) {
                              admissionPageViewModel.searchAdmissions(query, 'university');
                            },
                            decoration: InputDecoration(
                              hintText: 'University',
                              prefixIcon: Icon(Icons.school),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                // Admission list view
                UIHelper.cardviewwithlistfulladmissionlist(
                  title: "Admission",
                  items: admissionPageViewModel.filteredAdmissions, // Show filtered admissions here
                  color: Constant.bgColor,
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: CustomBottomNavBar(),
      );
    });
  }
}

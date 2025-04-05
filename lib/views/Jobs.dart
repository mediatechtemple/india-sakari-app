import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../utils/constants.dart';
import '../viewmodels/JobsViewModel.dart';
import 'CustomBottomNavBar.dart';
import 'UIHelper.dart'; // Flutter UI components

class JobsPage extends StatefulWidget {
  const JobsPage({super.key});

  @override
  _JobsPageState createState() => _JobsPageState();
}

class _JobsPageState extends State<JobsPage> {
  String dropdownValue = 'Latest Jobs'; // Default value for the dropdown

  @override
  Widget build(BuildContext context) {
    final JobsViewModel jobsViewModel = Get.find();
    jobsViewModel.fetchJobs();

    return Obx(() {
      return Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Title Row with dropdown
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Jobs',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      // Dropdown for "Archived" or "Latest Jobs"
                      DropdownButton<String>(
                        value: dropdownValue,
                        icon: Icon(Icons.arrow_drop_down),
                        iconSize: 24,
                        elevation: 16,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                        ),
                        onChanged: (String? newValue) {
                          setState(() {
                            dropdownValue = newValue!;
                          });

                          // Perform any action based on dropdown value
                          if (newValue == 'Archived') {
                            // Activate archived filter
                            jobsViewModel.toggleArchivedFilter(true);
                          } else {
                            // Show latest jobs (clear the archived filter)
                            jobsViewModel.toggleArchivedFilter(false);
                          }
                        },
                        items: <String>['Latest Jobs', 'Archived']
                            .map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                      ),
                    ],
                  ),
                  SizedBox(height: 16),
                  // First Row: Two search filters
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // Job Title Search
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(right: 8.0), // Spacing between fields
                          child: TextField(
                            onChanged: (query) {
                              jobsViewModel.searchJobs(query, 'title');
                            },
                            decoration: InputDecoration(
                              hintText: 'Jobs',
                              prefixIcon: Icon(Icons.search),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                                borderSide: BorderSide(color: Constant.bgColor),
                              ),
                            ),
                          ),
                        ),
                      ),
                      // Department Search
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 8.0), // Spacing between fields
                          child: TextField(
                            onChanged: (query) {
                              jobsViewModel.searchJobs(query, 'department');
                            },
                            decoration: InputDecoration(
                              hintText: 'Department',
                              prefixIcon: Icon(Icons.business),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                                borderSide: BorderSide(color: Constant.bgColor),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 16),
                  // Second Row: Two search filters
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // Category Search
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(right: 8.0), // Spacing between fields
                          child: TextField(
                            onChanged: (query) {
                              jobsViewModel.searchJobs(query, 'category');
                            },
                            decoration: InputDecoration(
                              hintText: 'Category',
                              prefixIcon: Icon(Icons.category),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                                borderSide: BorderSide(color: Constant.bgColor),
                              ),
                            ),
                          ),
                        ),
                      ),
                      // Education Search
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 8.0), // Spacing between fields
                          child: TextField(
                            onChanged: (query) {
                              jobsViewModel.searchJobs(query, 'education');
                            },
                            decoration: InputDecoration(
                              hintText: 'Education',
                              prefixIcon: Icon(Icons.school),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                                borderSide: BorderSide(color: Constant.bgColor),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            // Job List
            Expanded(
              child: SingleChildScrollView(
                child: SizedBox(
                  width: double.infinity,
                  child: UIHelper.cardviewwithlistfulljoblist(
                    title: dropdownValue, // Display selected category (Latest or Archived)
                    items: jobsViewModel.filteredJobs, // Assuming `filteredJobs` stores the filtered list
                    color: Constant.bgColor,
                  ),
                ),
              ),
            ),
          ],
        ),
        bottomNavigationBar: CustomBottomNavBar(),
      );
    });
  }
}

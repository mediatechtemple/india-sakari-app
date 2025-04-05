import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../viewmodels/JobPortalViewModel.dart';
import 'CustomBottomNavBar.dart';

class JobsPortalPage extends StatelessWidget {
  const JobsPortalPage({super.key});

  @override
  Widget build(BuildContext context) {
    // Fetch the endpoint from the route parameters
    final endpoint = Get.parameters['endpoint'];
    print("Endpoint: $endpoint");

    final JobPortalViewModel jobsPortalViewModel = Get.find();
    print('check api');
    print(jobsPortalViewModel.jobportal.value.toString());

    // Ensure the endpoint is not null or empty before calling the API
    if (endpoint != null && endpoint.isNotEmpty) {
      print("inside");
      jobsPortalViewModel.JobPortalPage(endpoint);
    } else {
      // Handle the case where no endpoint is provided
      return Scaffold(
        appBar: AppBar(
          title: const Text("Job Portal", style: TextStyle(fontWeight: FontWeight.bold)),
          backgroundColor: Colors.blueAccent,
          elevation: 0,
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text(
              'No endpoint provided for the job portal.',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 18, color: Colors.grey[700]),
            ),
          ),
        ),
      );
    }

    // Using Obx to listen to the changes in the view model
    return Obx(() {
      // Show a loading indicator if the data is still loading
      if (jobsPortalViewModel.isLoading.value) {
        return Center(
          child: CircularProgressIndicator(
            valueColor: AlwaysStoppedAnimation<Color>(Colors.blueAccent),
          ),
        );
      } else {
        return Scaffold(
          appBar: AppBar(
            title: const Text("Job Portal", style: TextStyle(fontWeight: FontWeight.bold)),
            backgroundColor: Colors.blueAccent,
            elevation: 0,
          ),
          body: SingleChildScrollView(
            padding: EdgeInsets.all(20), // Add padding around the content
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Job Portal title or header
                Text(
                  'Job Opportunities',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.blueAccent,
                  ),
                ),
                SizedBox(height: 20),
                // Job content
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.3),
                        spreadRadius: 5,
                        blurRadius: 10,
                        offset: Offset(0, 3),
                      ),
                    ],
                  ),
                  padding: EdgeInsets.all(16),
                  child: Html(
                    data: jobsPortalViewModel.jobportal.value.content,
                  ),
                ),
              ],
            ),
          ),
          bottomNavigationBar: CustomBottomNavBar(), // Custom navigation bar
        );
      }
    });
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:get/get.dart';

import '../viewmodels/AdmitCardPortalViewModel.dart';
import 'AdmitCardPortal.dart';
import 'CustomBottomNavBar.dart'; // Custom Bottom Navigation Bar
import 'UIHelper.dart'; // Flutter UI components

class AdmitCardPortalPage extends StatelessWidget {
  const AdmitCardPortalPage({super.key});

  @override
  Widget build(BuildContext context) {
    // Fetch the endpoint from the route parameters
    final endpoint = Get.parameters['endpoint'];
    print("Endpoint: $endpoint");


    final AdmitCardPortalViewModel admitcardPortalViewModel = Get.find();
    print('check api');
    print(admitcardPortalViewModel.admicardportal.value.content.toString());

    // Ensure the endpoint is not null or empty before calling the API
    if (endpoint != null && endpoint.isNotEmpty) {
      // Fetch job portal data using the view model
      print("inside");
      admitcardPortalViewModel.AdmitCardPortalPage(endpoint);
    } else {
      // Handle the case where no endpoint is provided
      return Scaffold(
        appBar: AppBar(
          title: const Text("Job Portal"),
        ),
        body: Center(
          child: Text('No endpoint provided for the job portal.'),
        ),
      );
    }

    // Using Obx to listen to the changes in the view model
    return Obx(() {
      // Show a loading indicator if the data is still loading
      if (admitcardPortalViewModel.isLoading.value) {
        return Center(child: CircularProgressIndicator());
      } else {
        return Scaffold(
          appBar: AppBar(
            title: const Text("Job Portal"),
          ),
          body: SingleChildScrollView(
            child: Html(
              data: admitcardPortalViewModel.admicardportal.value.content,
            ),
          ),
          bottomNavigationBar: CustomBottomNavBar(), // Custom navigation bar
        );
      }
    });
  }
}

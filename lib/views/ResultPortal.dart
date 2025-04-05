// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:get/get_core/src/get_main.dart';
//
// import '../viewmodels/JobPortalViewModel.dart';
// import 'CustomBottomNavBar.dart';
// import 'UIHelper.dart'; // Flutter UI components
//
// class ResultPortalPage extends StatelessWidget {
//   const ResultPortalPage({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     // Fetch the endpoint from the route parameters
//     final endpoint = Get.parameters['endpoint'];
//     print("Endpoint: $endpoint");
//
//     final JobPortalViewModel jobsPortalViewModel = Get.find();
//
//     // Ensure the endpoint is not null or empty before calling the API
//     if (endpoint != null && endpoint.isNotEmpty) {
//       // Fetch job portal data using the view model
//      // jobsPortalViewModel.JobPortalPage(endpoint);
//     } else {
//       // Handle the case where no endpoint is provided
//       return Scaffold(
//         appBar: AppBar(
//           title: const Text("Job Portal"),
//         ),
//         body: Center(
//           child: Text('No endpoint provided for the job portal.'),
//         ),
//       );
//     }
//
//     // Using Obx to listen to the changes in the view model
//     return Obx(() {
//       // Show a loading indicator if the data is still loading
//       if (jobsPortalViewModel.isLoading.value) {
//         return Center(child: CircularProgressIndicator());
//       } else {
//         return Scaffold(
//           appBar: AppBar(
//             title: const Text("Job Portal"),
//           ),
//           // body: jobsPortalViewModel.filteredJobPortal.isEmpty
//           //     ? Center(child: Text("No jobs available"))
//           //     : ListView.builder(
//           //   itemCount: jobsPortalViewModel.filteredJobPortal.length,
//           //   itemBuilder: (context, index) {
//           //     var job = jobsPortalViewModel.filteredJobPortal[index];
//           //     return ListTile(
//           //       title: Text(job.title),
//           //       subtitle: Text("jjh"),
//           //       onTap: () {
//           //         // Handle the tap to open job details or navigate to a specific page
//           //         print("Tapped on: ${job.title}");
//           //       },
//           //     );
//             },
//           ),
//           bottomNavigationBar: CustomBottomNavBar(), // Custom navigation bar
//         );
//       }
//     });
//   }
// }

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../utils/constants.dart';
import '../viewmodels/ResultPageViewModel.dart';
import 'CustomBottomNavBar.dart';
import 'UIHelper.dart'; // Flutter UI components

class ResultPage extends StatelessWidget {
  const ResultPage({super.key});

  @override
  Widget build(BuildContext context) {
    final ResultsPageViewModel resultPageViewModel = Get.find();
    resultPageViewModel.fetchResultPage();
    print("jhwewhwbfiwbifbwerwwuifbiuhwerbfuheruhffberuhgvfbuief");
    print(resultPageViewModel.filteredResult);
    return Obx(() {
      return Scaffold(
        appBar: AppBar(
          title: const Text("All Results"),
        ),
        body: SingleChildScrollView(
          child: SizedBox(
            width: double.infinity,
            child: Column(
              children: [
                // Search bar for filtering results
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: TextField(
                    onChanged: (query) {
                      // Update the search filter whenever the query changes
                      resultPageViewModel.searchResults(query); // Correct method name
                    },
                    decoration: InputDecoration(
                      hintText: 'Search by category or name',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      prefixIcon: Icon(Icons.search),
                    ),
                  ),
                ),

                // Result list view
                SizedBox(width: double.infinity,child:
                UIHelper.cardviewwithlistfullresultlist(
                  title: "Results",
                  items: resultPageViewModel.resultpage, // Show filtered results here
                  color: Constant.bgColor,
                    )
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

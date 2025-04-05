import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../utils/constants.dart';
import '../viewmodels/AnswerKeyPageViewModel.dart';
import '../viewmodels/JobsViewModel.dart';
import 'CustomBottomNavBar.dart';
import 'UIHelper.dart'; // Flutter UI components

class AnswerKeyPage extends StatelessWidget {
  const AnswerKeyPage({super.key});

  @override
  Widget build(BuildContext context) {
    final AnswerKeyPageViewModel answerkeyPageViewModel = Get.find();
    answerkeyPageViewModel.fetchAnswerKeyPage();
    print("aKJDHSHAJSKHUHASHASKJDHKAHAKJHSAJJ");
    print(answerkeyPageViewModel.filteredAnswerKey);

    return Obx(() {
      return Scaffold(
        appBar: AppBar(
          title: const Text("All AnswerKey"),
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
                      answerkeyPageViewModel.searchAnswerKey(query); // Correct method name
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
                UIHelper.cardviewwithlistfullanswerkeylist(
                  title: "AnswerKey",
                  items: answerkeyPageViewModel.answerkeypage, // Show filtered results here
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

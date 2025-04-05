import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../viewmodels/OldPaperViewModel.dart';
import 'CustomBottomNavBar.dart';

class OldPaperPage extends StatelessWidget {
  const OldPaperPage({super.key});

  @override
  Widget build(BuildContext context) {
    // Use GetX controller for the ViewModel
    final OldPaperViewModel viewModel = Get.find();

    // Fetch old papers when the page is first loaded
    viewModel.fetchOldPaper();

    return Scaffold(
      appBar: AppBar(
        title: Text("Old Paper"),
      ),
      body: Column(
        children: [
          // Search filter section
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              onChanged: (query) {
                // Call the filter method on text change
                viewModel.filterOldPaper(query);
              },
              decoration: InputDecoration(
                hintText: "Search for old papers...",
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: Colors.grey),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Trending button
                ElevatedButton.icon(
                  onPressed: () {
                    // Filter books by trending (add actual functionality)
                  },
                  icon: Icon(Icons.trending_up),
                  label: Text("Trending"),
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 12),
                  ),
                ),

                // Latest button
                ElevatedButton.icon(
                  onPressed: () {
                    // Filter books by latest (add actual functionality)
                  },
                  icon: Icon(Icons.new_releases),
                  label: Text("Latest"),
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 12),
                  ),
                ),

                // Free button
                ElevatedButton.icon(
                  onPressed: () {
                    // Filter books by free (add actual functionality)
                  },
                  icon: Icon(Icons.attach_money, color: Colors.green),
                  label: Text("Free"),
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 12),
                  ),
                ),

                // Paid button
                ElevatedButton.icon(
                  onPressed: () {
                    // Filter books by paid (add actual functionality)
                  },
                  icon: Icon(Icons.payments),
                  label: Text("Paid"),
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 12),
                  ),
                ),
              ],
            ),
          ),

          // Displaying the list of old papers
          Expanded(
            child: Obx(() {
              if (viewModel.isLoading.value) {
                return Center(child: CircularProgressIndicator());
              } else if (viewModel.errorMessage.isNotEmpty) {
                return Center(child: Text(viewModel.errorMessage.value));
              } else {
                return ListView.builder(
                  itemCount: viewModel.filteredOldPaper.length,  // Use the filtered list
                  itemBuilder: (context, index) {
                    final oldPaper = viewModel.filteredOldPaper[index];
                    return ListTile(
                      title: Text(oldPaper.title),
                      subtitle: Text(oldPaper.slug),
                      leading: oldPaper.ogImage != null
                          ? Image.network(oldPaper.ogImage!)
                          : null,
                      onTap: () {
                        // Handle old paper click (e.g., navigate to a detail page)
                        // For example, navigate to a new page showing more details
                        // Get.to(DetailPage(oldPaper: oldPaper));  // Uncomment if needed
                      },
                    );
                  },
                );
              }
            }),
          ),
        ],
      ),
        bottomNavigationBar: CustomBottomNavBar()
    );
  }
}

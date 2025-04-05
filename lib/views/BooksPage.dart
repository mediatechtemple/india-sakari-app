import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../viewmodels/BooksViewModel.dart';
import 'CustomBottomNavBar.dart';

class BooksPage extends StatelessWidget {
  const BooksPage({super.key});

  @override
  Widget build(BuildContext context) {
    // Use GetX controller for the ViewModel
    final BooksViewModel viewModel = Get.find();

    // Fetch books when the page is first loaded
    viewModel.fetchBooks();

    return Scaffold(
      appBar: AppBar(
        title: Text("Books"),
      ),
      body: Column(
        children: [
          // Search filter
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              onChanged: (query) {
                // Call the filter method on text change
                viewModel.filterBooks(query);
              },
              decoration: InputDecoration(
                hintText: "Search for books...",
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: Colors.grey),
                ),
              ),
            ),
          ),

          // Elevated buttons with icons
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

          // Displaying the list of books
          Expanded(
            child: Obx(() {  // Use Obx for reactive updates
              if (viewModel.isLoading.value) {
                return Center(child: CircularProgressIndicator());
              } else if (viewModel.errorMessage.isNotEmpty) {
                return Center(child: Text(viewModel.errorMessage.value));
              } else {
                return ListView.builder(
                  itemCount: viewModel.books.length,
                  itemBuilder: (context, index) {
                    final book = viewModel.books[index];
                    return ListTile(
                      title: Text(book.title),
                      subtitle: Text(book.slug),
                      leading: book.coverImageUrl != null
                          ? Image.network(book.coverImageUrl!)
                          : null,
                      onTap: () {
                        // Handle book click (e.g., navigate to book detail page)
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

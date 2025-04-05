import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../viewmodels/NotesViewModel.dart';
import 'CustomBottomNavBar.dart';

class NotesPage extends StatelessWidget {
  const NotesPage({super.key});

  @override
  Widget build(BuildContext context) {
    // Access the NotesViewModel using Get.find()
    final NotesViewModel viewModel = Get.find();

    // Fetch notes when the page is first loaded if they aren't loaded yet
    if (viewModel.notes.isEmpty) {
      viewModel.fetchNotes();
    }

    return Scaffold(
      appBar: AppBar(
        title: Text("Notes Page"),
      ),
      body: Column(
        children: [
          // Search filter for Notes
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              onChanged: (query) {
                // Call the filter method on text change
                viewModel.filterNotes(query);
              },
              decoration: InputDecoration(
                hintText: "Search for notes...",
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: Colors.grey),
                ),
              ),
            ),
          ),

          // Elevated buttons for filters (Trending, Latest, Free, Paid)
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Trending button
                ElevatedButton.icon(
                  onPressed: () {
                    // Filter notes by trending (implement actual filtering logic)
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
                    // Filter notes by latest (implement actual filtering logic)
                  },
                  icon: Icon(Icons.new_releases),
                  label: Text("Latest"),
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 12),
                  ),
                ),

                // Free button (if applicable)
                ElevatedButton.icon(
                  onPressed: () {
                    // Filter notes by free (implement actual filtering logic)
                  },
                  icon: Icon(Icons.attach_money, color: Colors.green),
                  label: Text("Free"),
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 12),
                  ),
                ),

                // Paid button (if applicable)
                ElevatedButton.icon(
                  onPressed: () {
                    // Filter notes by paid (implement actual filtering logic)
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

          // Displaying the list of notes
          Expanded(
            child: Obx(() {  // Use Obx for reactive updates
              if (viewModel.isLoading.value) {
                return Center(child: CircularProgressIndicator());
              } else if (viewModel.errorMessage.isNotEmpty) {
                return Center(child: Text(viewModel.errorMessage.value));
              } else {
                return ListView.builder(
                  itemCount: viewModel.notes.length,
                  itemBuilder: (context, index) {
                    final note = viewModel.notes[index];
                    return ListTile(
                      leading: Image.network(note.ogImage),
                      title: Text(note.title),
                      subtitle: Text(note.slug),
                      onTap: () {
                        // Handle note click (e.g., navigate to note detail page)
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

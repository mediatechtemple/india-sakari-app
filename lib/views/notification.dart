import 'package:flutter/material.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Notifications"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            // Main Title "All"
            Text(
              "All",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),

            // Subheading "SCC GD"
            Text(
              "SCC GD",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              "SSC GD Constable Recruitment 2024 Admit Card Released for 39481 Posts",
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 8),
            Text(
              "1 day ago",
              style: TextStyle(fontSize: 14, color: Colors.grey),
            ),
            Divider(),

            // Subheading "ESB"
            Text(
              "ESB",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              "MPESB Middle and Primary Teacher Recruitment 2025 Apply",
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 8),
            Text(
              "2 days ago",
              style: TextStyle(fontSize: 14, color: Colors.grey),
            ),
            Divider(),
          ],
        ),
      ),
    );
  }
}

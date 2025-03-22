import 'package:flutter/material.dart';

import 'CustomBottomNavBar.dart';


class MockTestPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mock Test'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          children: [
            // Main Heading
            Text(
              'MOCK TEST',
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),

            // Subheading: Welcome Akash Soni
            Text(
              'Welcome\nAkash Soni',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),

            // Upcoming Exam Heading
            Text(
              'Upcoming exam |',
              style: TextStyle(
                fontSize: 18,
                color: Colors.grey,
              ),
            ),
            SizedBox(height: 10),

            // Exam Name & Details
            buildExamCard(
              'IS HAEDING Online Test',
              '250+ Questions',
              '12 min',
              '234 examinee',
            ),
            buildExamCard(
              'Exam name',
              '250+ Questions',
              '12 min',
              '1234+ examinee',
            ),
            SizedBox(height: 20),

            // Free Section
            Text(
              'Free',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),

            buildExamCard(
              'Typing Test',
              '250+ Questions',
              '12 min',
              '234+ examinee',
            ),
            SizedBox(height: 20),

            // View All Button
            Center(
              child: ElevatedButton(
                onPressed: () {
                  // Add your action here
                },
                child: Text('View all'),
              ),
            ),
          ],
        ),
      ),
        bottomNavigationBar: CustomBottomNavBar()
    );
  }

  // Custom Widget to display each exam card
  Widget buildExamCard(
      String examName, String questionCount, String time, String examineeCount) {
    return Card(
      margin: EdgeInsets.only(bottom: 20),
      elevation: 4.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              examName,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Text(
              questionCount,
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey,
              ),
            ),
            Text(
              time,
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey,
              ),
            ),
            Text(
              examineeCount,
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

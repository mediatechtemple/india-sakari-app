import 'package:flutter/material.dart';

class AdvertisementPage extends StatelessWidget {
  const AdvertisementPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Advertisement With Us"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "This is the Advertisement Page.",
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Example action on the advertisement page
              },
              child: Text("Contact Us for Advertisement"),
            ),
          ],
        ),
      ),
    );
  }
}

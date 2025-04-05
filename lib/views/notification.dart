import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:indiasarkarinaukri/viewmodels/AppNotificationViewModel.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    final AppNotificationViewModel appNotificationViewModel = Get.find();
    appNotificationViewModel.fetchNotification();

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

            // Subheading "SCC GD" with image icon from URL
            Row(
              children: [
                // Image Icon for SCC GD (Loaded from URL)
                Image.network(
                  'https://s3-alpha-sig.figma.com/img/b815/6a66/55d24a1d4581acc3c2c338b31edb6954?Expires=1743984000&Key-Pair-Id=APKAQ4GOSFWCW27IBOMQ&Signature=gMheFw~Ie1XeXSJhXQ7z1W254o7giefw4U1gndtnuwL4jkNNcBgnE2Gt5jPI0nmmmPqdw0q8ZYII66auAFYmEixrlfKFPF2wsCBL7ic5ItSNmgHKnxQ6K~LuMBkTOk4KNZ7xhC2-5UUfDYL0r8lT8akcmStQv3-ggSI-SYsfeodCGFVYLAwrs8w1RZhGtf7gUTuUQxTY719oMn9yowUiIOpeTlMtR4d5OT1oCtzrwFA1pCgTG6EXbtL338gfjqfLDnjdVZrzaZQayoeJgT6axew7RuDCJ7kSHrYL4hpCOCQP-xKFi9IZUYGpA5AjEwLwBMtEfB56I7glrQhv3lLk9g__',
                  width: 24, // Icon width
                  height: 24, // Icon height
                  errorBuilder: (context, error, stackTrace) {
                    return Icon(Icons.error, size: 24); // Fallback icon in case of error
                  },
                ),
                SizedBox(width: 8), // Space between icon and text
                // Text "SCC GD"
                Text(
                  "SCC GD",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ],
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

            // Subheading "ESB" with image icon from URL
            Row(
              children: [
                // Image Icon for ESB (Loaded from URL)
                Image.network(
                  'https://s3-alpha-sig.figma.com/img/d56d/4464/1f5a99cfd5684e4c53b04847880ce820?Expires=1743984000&Key-Pair-Id=APKAQ4GOSFWCW27IBOMQ&Signature=WdoStWmVRgKWCy48Effj1Abuyq4OCf99Q0dKilu2TEPY~s3-0ZG5J~jVotWx7pr9w6SuChFEUQUcQEBWQJnhrsdIyLh0pBg4q059ZStnKLVn5L84m9lOjxaepuH6ST6CjM2ELMw-M3PFa3IJE2OaHAd4RorOjq-03xte1qEghgfv9Rc26psJHYgVX0nm04dt~FVBDFzrmZ439N1sxYq3BrXx1k4fJcJgzP3jaMSSbgNas2o46Ex3FojMhwyOjjHeOqgOkl290e-dHKjCYbpqskwecdIqlE-Gb5fEwb89vk~Ki5tyTlISAmlFk25MiC1y-JERe8yh9-1XFaL4FZeYlg__',
                  width: 24, // Icon width
                  height: 24, // Icon height
                  errorBuilder: (context, error, stackTrace) {
                    return Icon(Icons.error, size: 24); // Fallback icon in case of error
                  },
                ),
                SizedBox(width: 8), // Space between icon and text
                // Text "ESB"
                Text(
                  "ESB",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ],
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

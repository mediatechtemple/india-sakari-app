// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;
// import 'dart:convert';
//
// void main() {
//   runApp(const NotificationApp());
// }
//
// class NotificationApp extends StatelessWidget {
//   const NotificationApp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: const NotificationPage(),
//     );
//   }
// }
//
// class NotificationPage extends StatefulWidget {
//   const NotificationPage({super.key});
//
//   @override
//   NotificationPageState createState() => NotificationPageState();
// }
//
// class NotificationPageState extends State<NotificationPage> {
//   List<Map<String, dynamic>> notifications = [];
//   bool isLoading = true;
//
//   @override
//   void initState() {
//     super.initState();
//     fetchNotifications();
//   }
//
//   Future<void> fetchNotifications() async {
//     final String apiUrl = "https://example.com/api/notifications"; // Replace with actual API URL
//
//     try {
//       final response = await http.get(Uri.parse(apiUrl));
//
//       if (response.statusCode == 200) {
//         List<dynamic> data = json.decode(response.body);
//         setState(() {
//           notifications = data.map((item) {
//             return {
//               'title': item['title'],
//               'time': item['time'],
//               'category': item['category']
//             };
//           }).toList();
//           isLoading = false;
//         });
//       } else {
//         throw Exception("Failed to load notifications");
//       }
//     } catch (e) {
//       debugPrint("Error fetching notifications: $e");
//       setState(() {
//         isLoading = false;
//       });
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return DefaultTabController(
//       length: 3,
//       child: Scaffold(
//         appBar: AppBar(
//           title: const Text('Notification', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
//           bottom: const TabBar(
//             tabs: [
//               Tab(text: 'All'),
//               Tab(text: 'Read'),
//               Tab(text: 'Unread'),
//             ],
//           ),
//         ),
//         body: isLoading
//             ? const Center(child: CircularProgressIndicator())
//             : TabBarView(
//           children: [
//             GroupedNotificationList(notifications), // ✅ Updated "All" tab
//             NotificationList(notifications.where((n) => n['category'] == 'Read').toList()),
//             NotificationList(notifications.where((n) => n['category'] == 'Unread').toList()),
//           ],
//         ),
//       ),
//     );
//   }
// }
//
// /// ✅ Updated "All" Tab with Subheadings & Icons
// class GroupedNotificationList extends StatelessWidget {
//   final List<Map<String, dynamic>> notifications;
//
//   const GroupedNotificationList(this.notifications, {super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return ListView(
//       children: [
//         _buildHeading("All Notifications", Colors.grey.shade300),
//
//         _buildSubheading(Icons.assignment, "SCC GD", Colors.blue.shade100),
//         _buildNotification("SSC GD Constable Recruitment 2025 Admit Card Released for 39481 Posts", "1 day ago"),
//
//         _buildSubheading(Icons.school, "ESB", Colors.green.shade100),
//         _buildNotification("MPESB Middle and Primary Teacher Recruitment 2025 Apply", "2 days ago"),
//
//         _buildSubheading(Icons.account_balance, "UPSC", Colors.orange.shade100),
//         _buildNotification("UPSC Assistant Professor ORA Recruitment 2025", "7 days ago"),
//         _buildNotification("UPSC CAPF Assistant Commandants Recruitment 2025", "7 days ago"),
//         _buildNotification("UPSC IES/ISS Recruitment 2025 Apply for 47 Posts", "7 days ago"),
//
//         _buildSubheading(Icons.business, "BANK", Colors.purple.shade100),
//         _buildNotification("PNB Specialist Officer SO Recruitment 2025", "9 days ago"),
//         _buildNotification("Bank Of India BOI Apprentices Recruitment 2025", "9 days ago"),
//         _buildNotification("Indian Overseas Bank IOB Apprentice Recruitment 2025", "9 days ago"),
//
//         _buildSubheading(Icons.train, "RAILWAY", Colors.red.shade100),
//         _buildNotification("Rail Wheel Factory RWF Apprentices Recruitment 2025", "5 days ago"),
//         _buildNotification("Railway RRB Level 1 Group D Correction / Edit Online 2025", "5 days ago"),
//
//         _buildSubheading(Icons.security, "FORCE", Colors.teal.shade100),
//         _buildNotification("Indian Agniveer Army CEE Recruitment 2025", "2 days ago"),
//         _buildNotification("CISF Constable Tradesman Recruitment 2025", "2 days ago"),
//
//         _buildSubheading(Icons.gavel, "GOVT JOBS RAJASTHAN", Colors.brown.shade100),
//         _buildNotification("RPSC Deputy Commandant Recruitment 2025", "2 days ago"),
//         _buildNotification("RSSB Librarian Grade III Recruitment 2025 Apply for 548 Posts", "2 days ago"),
//         _buildNotification("Rajasthan High Court Civil Recruitment 2025", "2 days ago"),
//
//         _buildSubheading(Icons.work, "GOVT JOB UP", Colors.blueGrey.shade100),
//         _buildNotification("Allahabad High Court Research Associate Recruitment 2025", "3 days ago"),
//         _buildNotification("Uttar Pradesh UPPSC 2024 Mains Exam Online Form", "3 days ago"),
//         _buildNotification("CSIR – CDRI JSA & Stenographer Recruitment 2025", "3 days ago"),
//
//         _buildSubheading(Icons.home_work, "GOVT JOBS MP", Colors.deepPurple.shade100),
//         _buildNotification("MPPSC Assistant Professor Recruitment 2025", "4 days ago"),
//         _buildNotification("MPESB Group 4 Various Post Recruitment 2025", "4 days ago"),
//         _buildNotification("MPESB Group-I Sub Group-III Various Post Recruitment 2025", "4 days ago"),
//       ],
//     );
//   }
//
//   /// ✅ Widget for Section Heading
//   Widget _buildHeading(String text, Color color) {
//     return Container(
//       padding: const EdgeInsets.all(12),
//       color: color,
//       child: Text(
//         text,
//         style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
//         textAlign: TextAlign.center,
//       ),
//     );
//   }
//
//   /// ✅ Widget for Subheadings with Icons
//   Widget _buildSubheading(IconData icon, String text, Color color) {
//     return Container(
//       padding: const EdgeInsets.all(10),
//       color: color,
//       width: double.infinity,
//       child: Row(
//         children: [
//           Icon(icon, size: 24, color: Colors.black),
//           const SizedBox(width: 10),
//           Text(
//             text,
//             style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
//           ),
//         ],
//       ),
//     );
//   }
//
//   /// ✅ Widget for Notifications
//   Widget _buildNotification(String title, String time) {
//     return Card(
//       margin: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
//       child: ListTile(
//         title: Row(
//           children: [
//             const Text("✔ ", style: TextStyle(color: Colors.green, fontSize: 18)), // ✅ Checkmark
//             Expanded(
//               child: Text(
//                 title,
//                 style: const TextStyle(fontWeight: FontWeight.bold),
//               ),
//             ),
//           ],
//         ),
//         subtitle: Text(time),
//         leading: const Icon(Icons.notifications, color: Colors.blue),
//       ),
//     );
//   }
// }
//
// /// ✅ Normal Notification List (Used in Read & Unread Tabs)
// class NotificationList extends StatelessWidget {
//   final List<Map<String, dynamic>> notifications;
//
//   const NotificationList(this.notifications, {super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return ListView.builder(
//       itemCount: notifications.length,
//       itemBuilder: (context, index) {
//         return Card(
//           margin: const EdgeInsets.all(8.0),
//           child: ListTile(
//             title: Text(notifications[index]['title'], style: const TextStyle(fontWeight: FontWeight.bold)),
//             subtitle: Text(notifications[index]['time']),
//             leading: const Icon(Icons.notifications, color: Colors.blue),
//           ),
//         );
//       },
//     );
//   }
// }

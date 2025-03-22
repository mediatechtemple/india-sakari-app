import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class NotificationPage extends StatefulWidget {
  const NotificationPage({super.key});

  @override
  _NotificationPageState createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  List<Map<String, dynamic>> notifications = [];
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    fetchNotifications();
  }

  Future<void> fetchNotifications() async {
    final String apiUrl = "https://your-api.com/notifications"; // Replace with your API

    try {
      final response = await http.get(Uri.parse(apiUrl));

      if (response.statusCode == 200) {
        List<dynamic> data = json.decode(response.body);
        setState(() {
          notifications = data.map((item) {
            return {
              'title': item['title'],
              'time': item['time'],
              'category': item['category'] // API must send 'SCC GD' or 'ESB'
            };
          }).toList();
          isLoading = false;
        });
      } else {
        throw Exception("Failed to load notifications");
      }
    } catch (e) {
      debugPrint("Error fetching notifications: $e");
      setState(() {
        isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Notification', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
          bottom: const TabBar(
            tabs: [
              Tab(text: 'All'),
              Tab(text: 'Read'),
              Tab(text: 'Unread'),
            ],
          ),
        ),
        body: isLoading
            ? const Center(child: CircularProgressIndicator())
            : TabBarView(
          children: [
            // NotificationList(notifications), // All Notifications
            // NotificationList(notifications.where((n) => n['category'] == 'Read').toList()), // Read
            // NotificationList(notifications.where((n) => n['category'] == 'Unread').toList()), // Unread
          ],
        ),
      ),
    );
  }
}

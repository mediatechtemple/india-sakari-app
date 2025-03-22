import 'package:flutter/material.dart';

class NotificationList extends StatelessWidget {
  final List<Map<String, dynamic>> notifications;

  const NotificationList(this.notifications, {super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: notifications.length,
      itemBuilder: (context, index) {
        String category = notifications[index]['category'];
        String iconPath = category == 'SCC GD'
            ? 'assets/images/ssc_gd.png'
            : category == 'ESB'
            ? 'assets/images/esb.png'
            : 'assets/images/default.png'; // Default image

        return Card(
          margin: const EdgeInsets.all(8.0),
          child: ListTile(
            leading: Image.asset(iconPath, width: 40, height: 40),
            title: Text(
              notifications[index]['title'],
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Text(notifications[index]['time']),
          ),
        );
      },
    );
  }
}

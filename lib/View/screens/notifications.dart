import 'package:flutter/material.dart';

class NotificationsPage extends StatelessWidget {
  final List<NotificationItem> notifications = [
    NotificationItem(
      title: 'New Message',
      description: 'You have a new message from John Doe.',
      time: '5 mins ago',
    ),
    NotificationItem(
      title: 'Update Available',
      description: 'A new update is available for your app.',
      time: '1 hour ago',
    ),
    NotificationItem(
      title: 'Reminder',
      description: 'Don\'t forget your meeting at 3 PM today.',
      time: '2 hours ago',
    ),
    NotificationItem(
      title: 'Security Alert',
      description: 'Unusual login activity detected.',
      time: '1 day ago',
    ),
  ];

   NotificationsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 118, 118, 118),
        title: const Text('Notifications'),
      ),
      body: ListView.builder(
        itemCount: notifications.length,
        itemBuilder: (context, index) {
          final notification = notifications[index];
          return Card(
            color: const Color.fromARGB(255, 238, 238, 238),
            margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
            child: ListTile(
              leading: const Icon(Icons.notifications,
                  color: Color.fromARGB(255, 118, 152, 181)),
              title: Text(notification.title,
                  style: const TextStyle(fontWeight: FontWeight.bold)),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(notification.description),
                  const SizedBox(height: 5),
                  Text(
                    notification.time,
                    style: const TextStyle(color: Colors.grey, fontSize: 12),
                  ),
                ],
              ),
              isThreeLine: true,
            ),
          );
        },
      ),
    );
  }
}

class NotificationItem {
  final String title;
  final String description;
  final String time;

  NotificationItem(
      {required this.title, required this.description, required this.time});
}

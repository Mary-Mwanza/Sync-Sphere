import 'package:flutter/material.dart';

class OverviewContainer extends StatelessWidget {
  final String title;
  final String status;
  final IconData icon;

  const OverviewContainer(
      {super.key, required this.title, required this.status, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListTile(
        leading:
            Icon(icon, size: 30.0, color: const Color.fromARGB(255, 127, 165, 195)),
        title: Text(title, style: const TextStyle(fontSize: 18.0)),
        subtitle: Text(status),
      ),
    );
  }
}

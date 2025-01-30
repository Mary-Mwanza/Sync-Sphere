import 'package:flutter/material.dart';

class GreetingCard extends StatelessWidget {
  const GreetingCard({super.key});

  String getGreeting() {
    final hour = DateTime.now().hour;

    if (hour < 12) {
      return 'Good Morning, John!';
    } else if (hour < 17) {
      return 'Good Afternoon, John!';
    } else {
      return 'Good Evening, John!';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      child: Text(
        getGreeting(),
        style: const TextStyle(fontSize: 18),
      ),
    );
  }
}

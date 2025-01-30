import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../widgets/climat.dart';
import 'notifications.dart';

class ClimatePage extends StatelessWidget {
  final Map<String, dynamic> climateSummary = {
    'temperature': 22.5,
    'humidity': 45,
    'airQuality': 'Good',
  };

  final List<Map<String, dynamic>> devices = [
    {'name': 'Air Conditioner', 'status': true},
    {'name': 'Humidifier', 'status': false},
    {'name': 'Air Purifier', 'status': true},
  ];

   ClimatePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 118, 118, 118),
        actions: [
          IconButton(
            onPressed: () {
              Get.to(NotificationsPage());
            },
            icon: const Stack(
              children: [
                Icon(Icons.notifications_outlined),
              ],
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Card(
              elevation: 4,
              color: const Color.fromARGB(255, 236, 236, 236),
              margin: const EdgeInsets.symmetric(vertical: 16),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Climate Summary',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text('Temperature: ${climateSummary['temperature']}°C'),
                    const SizedBox(height: 6),
                    Text('Humidity: ${climateSummary['humidity']}%'),
                    const SizedBox(height: 6),
                    Text('Air Quality: ${climateSummary['airQuality']}'),
                  ],
                ),
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: devices.length,
                itemBuilder: (context, index) {
                  return ClimateDeviceCard(device: devices[index]);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

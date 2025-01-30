import 'package:flutter/material.dart';

class ClimateDeviceCard extends StatelessWidget {
  final Map<String, dynamic> device;

  const ClimateDeviceCard({super.key, required this.device});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      color: const Color.fromARGB(255, 225, 225, 225),
      margin: const EdgeInsets.symmetric(vertical: 8),
      child: ListTile(
        title: Text(device['name']),
        subtitle: Text(device['status'] ? 'On' : 'Off'),
        trailing: Icon(device['status'] ? Icons.power : Icons.power_off),
      ),
    );
  }
}

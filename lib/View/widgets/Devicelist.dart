import 'package:flutter/material.dart';

class DeviceListTile extends StatelessWidget {
  final String deviceName;
  final String deviceStatus;

  const DeviceListTile({super.key, required this.deviceName, required this.deviceStatus});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListTile(
        title: Text(deviceName),
        subtitle: Text(deviceStatus),
        trailing: IconButton(
          icon: const Icon(Icons.power_settings_new),
          onPressed: () {
            // Toggle device status
          },
        ),
      ),
    );
  }
}
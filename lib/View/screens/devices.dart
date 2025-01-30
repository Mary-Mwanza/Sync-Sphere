import 'package:flutter/material.dart';
import 'package:s_sphere/View/screens/schedule.dart';


import '../widgets/bottomnavigator.dart';

class DevicePage extends StatelessWidget {
  final List<Map<String, dynamic>> devices = [
    {'name': 'Air Conditioner', 'status': true},
    {'name': 'Refrigerator', 'status': true},
    {'name': 'Washing Machine', 'status': false},
    {'name': 'Heater', 'status': false},
    {'name': 'Lights', 'status': true},
  ];

  DevicePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 118, 118, 118),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Stack(
                children: [
                  Icon(Icons.notifications_outlined),
                  // if (wishController2.wishlist.isNotEmpty)
                ],
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const Stack(
                children: [
                  Icon(Icons.person_outline),
                  // if (wishController2.wishlist.isNotEmpty)
                ],
              ),
            ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 16.0),
              const Text(
                'Device Status',
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
              const SizedBox(height: 16.0),
              const Text(
                'All Connected Devices',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              const SizedBox(height: 16.0),
              Expanded(
                child: ListView.builder(
                  itemCount: devices.length,
                  itemBuilder: (context, index) {
                    return DeviceCard(
                      device: devices[index],
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SchedulePage(),
                          ),
                        );
                      },
                    );
                  },
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: bottombar());
  }
}

class DeviceCard extends StatelessWidget {
  final Map<String, dynamic> device;
  final VoidCallback onTap;

  const DeviceCard({super.key, required this.device, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
      child: ListTile(
        tileColor: Colors.grey[200],
        title: Text(device['name']),
        subtitle: Text(device['status'] ? 'On' : 'Off'),
        trailing: Icon(device['status']
            ? Icons.power_settings_new_outlined
            : Icons.power_off),
        onTap: onTap,
      ),
    );
  }
}

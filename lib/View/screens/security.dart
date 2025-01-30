import 'package:flutter/material.dart';
import 'package:s_sphere/View/widgets/bottomnavigator.dart';


import '../widgets/securityCard.dart';


class SecurityPage extends StatelessWidget {
  const SecurityPage({super.key});

  @override
  Widget build(BuildContext context) {
    // productController.loadProducts();
    // buttonController.loadButton();
    return SafeArea(
        child: Scaffold(
            backgroundColor: Colors.white,
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
            body: ListView(
              padding: const EdgeInsets.all(16.0),
              children: [
                securityCard(
                  deviceName: 'Front Door Camera',
                  thumbnailUrl: 'assets/images/Video.jpg',
                ),
                Card(
                  color: Colors.grey[200],
                  child: Padding(
                    padding: const EdgeInsets.all(6.0),
                    child: Column(
                      children: [
                        const Text(
                          'Alarms',
                          style: TextStyle(
                              fontSize: 22, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(height: 8.0),
                        AlarmDeviceCard(
                          deviceName: 'Smoke Detector',
                          deviceStatus: 'Active',
                          icon: Icons.warning,
                        ),
                        AlarmDeviceCard(
                          deviceName: 'CO Detector',
                          deviceStatus: 'Inactive',
                          icon: Icons.error,
                        ),
                        AlarmDeviceCard(
                          deviceName: 'Glass Break Sensor',
                          deviceStatus: 'Active',
                          icon: Icons.sensors,
                        ),
                      ],
                    ),
                  ),
                ),
                const Divider(height: 32.0),
                const Text(
                  'Cameras',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 8.0),
                CameraDeviceCard(
                  deviceName: 'Front Door Camera',
                  deviceStatus: 'Active',
                  thumbnailUrl:
                      'https://via.placeholder.com/150', // Placeholder image URL
                ),
                CameraDeviceCard(
                  deviceName: 'Living Room Camera',
                  deviceStatus: 'Inactive',
                  thumbnailUrl:
                      'https://via.placeholder.com/150', // Placeholder image URL
                ),
                CameraDeviceCard(
                  deviceName: 'Backyard Camera',
                  deviceStatus: 'Active',
                  thumbnailUrl:
                      'https://via.placeholder.com/150', // Placeholder image URL
                ),
              ],
            ),
            bottomNavigationBar: bottombar()));
  }
}

class AlarmDeviceCard extends StatelessWidget {
  final String deviceName;
  final String deviceStatus;
  final IconData icon;

  const AlarmDeviceCard({super.key, 
    required this.deviceName,
    required this.deviceStatus,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8.0),
      child: ListTile(
        leading:
            Icon(icon, size: 40, color: const Color.fromARGB(255, 127, 165, 195)),
        title: Text(deviceName),
        subtitle: Text(deviceStatus),
        trailing: IconButton(
          icon: const Icon(Icons.more_vert),
          onPressed: () {
            // Handle more options
          },
        ),
      ),
    );
  }
}

class CameraDeviceCard extends StatelessWidget {
  final String deviceName;
  final String deviceStatus;
  final String thumbnailUrl;

  const CameraDeviceCard({super.key, 
    required this.deviceName,
    required this.deviceStatus,
    required this.thumbnailUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8.0),
      child: ListTile(
        tileColor: Colors.grey[200],
        leading: Image.network(thumbnailUrl,
            width: 100, height: 100, fit: BoxFit.cover),
        title: Text(deviceName),
        subtitle: Text(deviceStatus),
        trailing: IconButton(
          icon: const Icon(Icons.power_settings_new),
          onPressed: () {
            // Handle more options
          },
        ),
      ),
    );
  }
}

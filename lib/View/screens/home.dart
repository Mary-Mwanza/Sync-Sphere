import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:s_sphere/View/screens/notifications.dart';
import 'package:s_sphere/View/widgets/Greetings.dart';
import 'package:s_sphere/View/widgets/HomeCard2.dart';
import 'package:s_sphere/View/widgets/bottomnavigator.dart';
import 'package:s_sphere/View/widgets/drawer.dart';
import 'package:s_sphere/View/widgets/roomCard.dart';

import '../widgets/homecard.dart';

class MyHomePage extends StatelessWidget {
  MyHomePage({super.key});
  final double totalEnergyConsumption = 15000.0;

  final List<Map<String, dynamic>> devices = [
    {'name': 'Air Conditioner', 'energy': 1500.0},
    {'name': 'Refrigerator', 'energy': 1200.0},
    {'name': 'Washing Machine', 'energy': 800.0},
    {'name': 'Heater', 'energy': 1000.0},
    {'name': 'Lights', 'energy': 500.0},
  ];
  double get usedEnergy {
    return devices.fold(0, (sum, device) => sum + device['energy']);
  }

  final Map<String, dynamic> climateSummary = {
    'temperature': 22.5,
    'humidity': 45,
    'airQuality': 42,
  };
  final Map<String, dynamic> roomSummary = {
    'Living Room': 3,
    'Kitchen': 5,
    'Bedroom 1': 2,
  };

  @override
  Widget build(BuildContext context) {
    // productController.loadProducts();
    // buttonController.loadButton();
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.grey[600],
      appBar: AppBar(
        title: GreetingCard(),
        backgroundColor: Colors.transparent,
        elevation: 0,
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
      drawer: const CustomDrawer(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(2.0),
              child: GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 4.0,
                mainAxisSpacing: 4.0,
                childAspectRatio: 2.3,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                children: [
                  HomeCard(
                    title: 'Temperature',
                    icon: Icons.thermostat_auto,
                    description: '${climateSummary['temperature']}°C',
                    onTap: () {
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(builder: (context) => EnergyPage()),
                      // );
                    },
                  ),
                  HomeCard(
                    title: 'Humidity',
                    icon: Icons.devices,
                    description: '   ${climateSummary['humidity']}%',
                    onTap: () {
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(builder: (context) => ClimatePage()),
                      // );
                    },
                  ),
                  HomeCard(
                    title: 'Air Quality',
                    icon: Icons.air_outlined,
                    description: ' ${climateSummary['airQuality']}',
                    onTap: () {
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(builder: (context) => ClimatePage()),
                      // );
                    },
                  ),
                  HomeCard(
                    title: 'Total Power Usage',
                    icon: Icons.flash_on_outlined,
                    description: '${usedEnergy.toStringAsFixed(2)} kWh',
                    onTap: () {
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(builder: (context) => EnergyPage()),
                      // );
                    },
                  ),
                  // securityCard(
                  //   deviceName: 'Front Door Camera',
                  //   thumbnailUrl: 'assets/images/Video.jpg',
                  // ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(2.0),
              child: GridView.count(
                crossAxisCount: 4,
                crossAxisSpacing: 1.0,
                mainAxisSpacing: 2.0,
                childAspectRatio: 1.0,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                children: [
                  HomeCard2(
                    icon: Icons.thermostat_auto,
                    description: '${climateSummary['temperature']}°C',
                    onTap: () {
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(builder: (context) => EnergyPage()),
                      // );
                    },
                  ),
                  HomeCard2(
                    icon: Icons.devices,
                    description: '   ${climateSummary['humidity']}%',
                    onTap: () {
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(builder: (context) => ClimatePage()),
                      // );
                    },
                  ),
                  HomeCard2(
                    icon: Icons.air_outlined,
                    description: ' ${climateSummary['airQuality']}',
                    onTap: () {
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(builder: (context) => ClimatePage()),
                      // );
                    },
                  ),
                  HomeCard2(
                    icon: Icons.flash_on_outlined,
                    description: '${usedEnergy.toStringAsFixed(2)} kWh',
                    onTap: () {
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(builder: (context) => EnergyPage()),
                      // );
                    },
                  ),
                  // securityCard(
                  //   deviceName: 'Front Door Camera',
                  //   thumbnailUrl: 'assets/images/Video.jpg',
                  // ),
                ],
              ),
            ),
            Container(
                padding: const EdgeInsets.all(2.0),
                child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        RoomCard(
                            thumbnailUrl: 'assets/images/Video.jpg',
                            title: 'Living Room',
                            device:
                                '${roomSummary['Living Room']} devices active'),
                        const SizedBox(
                          width: 10,
                        ),
                        RoomCard(
                            thumbnailUrl: 'assets/images/Video.jpg',
                            title: 'Kitchen',
                            device: '${roomSummary['Kitchen']} devices active'),
                        const SizedBox(
                          width: 10,
                        ),
                        RoomCard(
                            thumbnailUrl: 'assets/images/Video.jpg',
                            title: 'Bedroom 1',
                            device:
                                '${roomSummary['Bedroom 1']} devices active'),
                        const SizedBox(
                          width: 10,
                        ),
                        RoomCard(
                            thumbnailUrl: 'assets/images/Video.jpg',
                            title: 'Bedroom 1',
                            device:
                                '${roomSummary['Bedroom 1']} devices active'),
                      ],
                    )))
          ],
        ),
      ),
      bottomNavigationBar: bottombar(),
    ));
  }
}

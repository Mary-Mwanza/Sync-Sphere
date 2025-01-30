import 'package:flutter/material.dart';
import 'package:s_sphere/View/widgets/energ.dart';


import '../widgets/bottomnavigator.dart';

class EnergyPage extends StatelessWidget {
  EnergyPage({super.key});
  final double totalEnergyConsumption =
      15000.0; // Example total energy consumption in kWh
  final List<Map<String, dynamic>> devices = [
    {
      'icon': Icons.tv,
      'name': 'Smart TV',
      'room': 'Living Room',
      'energy': 50.0
    },
    {
      'icon': Icons.lightbulb_outline,
      'name': 'Smart Light',
      'room': 'Bedroom',
      'energy': 60.0
    },
    {
      'icon': Icons.speaker,
      'name': 'JBL Speaker',
      'room': 'Living Room',
      'energy': 40.0
    },
    {
      'icon': Icons.heat_pump_outlined,
      'name': 'Heater',
      'room': 'Bedroom',
      'energy': 70.0
    },
    {
      'icon': Icons.kitchen,
      'name': 'Smart Fridge',
      'room': 'Kitchen',
      'energy': 90.0
    },
  ];
  double get usedEnergy {
    return devices.fold(0, (sum, device) => sum + device['energy']);
  }

  double get Bill {
    return (usedEnergy * 0.75);
  }

  @override
  Widget build(BuildContext context) {
    // productController.loadProducts();
    // buttonController.loadButton();
    return SafeArea(
        child: Scaffold(
            backgroundColor: Colors.grey[800],
            appBar: AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0,
              title: const Text('Usage Summary'),
            ),
            body: Padding(
                padding: const EdgeInsets.all(4.0),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            ElevatedButton(
                              onPressed: () async {},
                              style: ElevatedButton.styleFrom(
                                elevation: 4,
                                backgroundColor: Colors.grey[600],
                              ),
                              child: const Text(
                                'Today',
                                style: TextStyle(
                                    fontSize: 14, color: Colors.white),
                              ),
                            ),
                            const SizedBox(
                              width: 6,
                            ),
                            ElevatedButton(
                              onPressed: () async {},
                              style: ElevatedButton.styleFrom(
                                elevation: 4,
                                backgroundColor: Colors.grey[900],
                              ),
                              child: const Text(
                                'Week',
                                style: TextStyle(
                                    fontSize: 14, color: Colors.white),
                              ),
                            ),
                            const SizedBox(
                              width: 6,
                            ),
                            ElevatedButton(
                              onPressed: () async {},
                              style: ElevatedButton.styleFrom(
                                elevation: 4,
                                backgroundColor: Colors.grey[900],
                              ),
                              child: const Text(
                                'This Month',
                                style: TextStyle(
                                    fontSize: 14, color: Colors.white),
                              ),
                            ),
                            const SizedBox(
                              width: 6,
                            ),
                            ElevatedButton(
                              onPressed: () async {},
                              style: ElevatedButton.styleFrom(
                                elevation: 4,
                                backgroundColor: Colors.grey[900],
                              ),
                              child: const Text(
                                'This Year',
                                style: TextStyle(
                                    fontSize: 14, color: Colors.white),
                              ),
                            ),
                            const SizedBox(
                              width: 6,
                            ),
                            ElevatedButton(
                              onPressed: () async {},
                              style: ElevatedButton.styleFrom(
                                elevation: 4,
                                backgroundColor: Colors.grey[900],
                              ),
                              child: const Text(
                                'All',
                                style: TextStyle(
                                    fontSize: 14, color: Colors.white),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Card(
                        color: Colors.white24,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(24.0),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment
                                .spaceBetween, // To space out the children
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Kes ${Bill.toStringAsFixed(2)}',
                                    style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text(
                                    '${usedEnergy.toStringAsFixed(2)} kWh',
                                    style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Expanded(
                        child: ListView.builder(
                          itemCount: devices.length,
                          itemBuilder: (context, index) {
                            return EnergyContainer(
                              icon: devices[index]['icon'],
                              deviceName: devices[index]['name'],
                              deviceRoom: devices[index]['room'],
                              deviceEnergy: devices[index]['energy'],
                            );
                          },
                        ),
                      ),
                    ])),
            bottomNavigationBar: bottombar()));
  }
}

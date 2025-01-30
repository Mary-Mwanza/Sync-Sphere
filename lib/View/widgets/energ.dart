import 'package:flutter/material.dart';

class EnergyContainer extends StatelessWidget {
  final double totalEnergyConsumption =
      15000.0; // Example total energy consumption in kWh
  final List<Map<String, dynamic>> devices = [
    {'name': 'Air Conditioner', 'energy': 150.0},
    {'name': 'Refrigerator', 'energy': 120.0},
    {'name': 'Washing Machine', 'energy': 80.0},
    {'name': 'Heater', 'energy': 100.0},
    {'name': 'Lights', 'energy': 50.0},
  ];
  double get usedEnergy {
    return devices.fold(0, (sum, device) => sum + device['energy']);
  }

  final IconData icon;
  final String deviceName;
  final String deviceRoom;
  final double deviceEnergy;

  EnergyContainer({super.key, 
    required this.icon,
    required this.deviceName,
    required this.deviceRoom,
    required this.deviceEnergy,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        
        margin: const EdgeInsets.symmetric(vertical: 8.0),
        padding: const EdgeInsets.all(16.0),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Icon(icon, size: 45.0, color: Colors.cyan),
          const SizedBox(
            width: 16,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                deviceName,
                style: const TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 17),
              ),
              const SizedBox(
                height: 16,
              ),
              Text(
                deviceRoom,
                style: const TextStyle(color: Colors.black, fontSize: 17),
              ),
            ],
          ),
          const SizedBox(
            width: 100,
          ),
          Text('$deviceEnergy kWh ',
              style: const TextStyle(color: Colors.black, fontSize: 17)),
          const Divider(),
        ]));
  }
}

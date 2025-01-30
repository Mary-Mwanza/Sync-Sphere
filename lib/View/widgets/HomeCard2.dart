import 'package:flutter/material.dart';

class HomeCard2 extends StatelessWidget {
  final IconData icon;

  final String description;
  final VoidCallback onTap;

  const HomeCard2({super.key, 
    required this.icon,
    required this.description,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: onTap,
        child: Card(
          color: Colors.grey[400],
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.0),
          ),
          child: Container(
            height: 100.0,
            padding: const EdgeInsets.all(4.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(height: 16.0),
                Icon(icon, size: 28.0, color: Colors.cyan),
                Text(
                  description,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                      color: Color.fromARGB(255, 47, 47, 47),
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ));
  }
}

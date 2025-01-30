import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppSettingsPage extends StatelessWidget {
  const AppSettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 118, 118, 118),
        title: const Text('App Settings'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView(
          children: [
            Card(
              color: Colors.grey[100],
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    const Text('Language ',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold)),
                    ListTile(
                      title: const Text('English'),
                      onTap: () {
                        // Handle language change to English
                      },
                    ),
                    ListTile(
                      title: const Text('Spanish'),
                      onTap: () {
                        // Handle language change to Spanish
                      },
                    ),
                  ],
                ),
              ),
            ),

            Card(
              color: Colors.grey[100],
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('Theme ',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold)),
                    ListTile(
                      title: const Text('Light Theme'),
                      leading: Radio(
                        value: ThemeMode.light,
                        groupValue:
                            Get.isDarkMode ? ThemeMode.dark : ThemeMode.light,
                        onChanged: (ThemeMode? mode) {
                          if (mode != null) {
                            Get.changeThemeMode(mode);
                          }
                        },
                      ),
                    ),
                    ListTile(
                      title: const Text('Dark Theme'),
                      leading: Radio(
                        value: ThemeMode.dark,
                        groupValue:
                            Get.isDarkMode ? ThemeMode.dark : ThemeMode.light,
                        onChanged: (ThemeMode? mode) {
                          if (mode != null) {
                            Get.changeThemeMode(mode);
                          }
                        },
                      ),
                    ),
                    ListTile(
                      title: const Text('System Default'),
                      leading: Radio(
                        value: ThemeMode.system,
                        groupValue:
                            Get.isDarkMode ? ThemeMode.dark : ThemeMode.light,
                        onChanged: (ThemeMode? mode) {
                          if (mode != null) {
                            Get.changeThemeMode(mode);
                          }
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),

            // Add more languages as needed
          ],
        ),
      ),
    );
  }
}

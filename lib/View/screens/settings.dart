import 'package:flutter/material.dart';
import 'package:s_sphere/View/screens/notifications.dart';
import 'package:s_sphere/View/screens/privacy.dart';
import 'package:s_sphere/View/screens/profile.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: Colors.grey[100],
            appBar: AppBar(
              backgroundColor: const Color.fromARGB(255, 118, 118, 118),
            ),
            body: ListView(children: [
              SettingsSection(
                title: 'Profile Settings',
                tiles: [
                  SettingsTile(title: 'Profile Picture', page: ProfilePage()),
                  SettingsTile(title: 'Username', page: ProfilePage()),
                  SettingsTile(title: 'Email', page: ProfilePage()),
                  SettingsTile(title: 'Password', page: ProfilePage()),
                ],
              ),
              SettingsSection(
                title: 'App Settings',
                tiles: [
                  SettingsTile(title: 'Notifications', page: NotificationsPage()),
                  SettingsTile(title: 'Privacy', page: PrivacyPage()),
                ],
              ),
            ])));
  }
}

class SettingsSection extends StatelessWidget {
  final String title;
  final List<SettingsTile> tiles;

  const SettingsSection({super.key, required this.title, required this.tiles});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            title,
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ),
        ...tiles,
      ],
    );
  }
}

class SettingsTile extends StatelessWidget {
  final String title;
  final Widget page;

  const SettingsTile({super.key, required this.title, required this.page});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => page),
        );
      },
    );
  }
}





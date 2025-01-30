import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../screens/profile.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white54,
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.only(
                top: MediaQuery.of(context)
                    .padding
                    .top), // To respect the system's status bar
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                IconButton(
                  icon: const Icon(Icons.close),
                  onPressed: () {},
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView(
              children: <Widget>[
                ListTile(
                  leading: const Icon(Icons.person),
                  title: const Text('Profile'),
                  onTap: () {
                    Get.to(ProfilePage());
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.question_answer_outlined),
                  title: const Text('User Feedback'),
                  onTap: () {
                    // do something
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.question_mark_outlined),
                  title: const Text('Help'),
                  onTap: () {
                    // do something
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.logout),
                  title: const Text('Logout'),
                  onTap: () {
                    // do something
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

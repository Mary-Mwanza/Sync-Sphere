import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PrivacyPage extends StatelessWidget {
  const PrivacyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 118, 118, 118),
        title: const Text('Privacy and Security'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView(
          children: [
            ListTile(
              leading: const Icon(Icons.lock),
              title: const Text('Change Password'),
              trailing: const Icon(Icons.arrow_forward_ios),
              onTap: () {
                Get.to(const ChangePasswordPage());
              },
            ),
            const Divider(),
            ListTile(
              leading: const Icon(Icons.security),
              title: const Text('Two-Factor Authentication'),
              trailing: const Icon(Icons.arrow_forward_ios),
              onTap: () {
                Get.to(const TwoFactorAuthenticationPage());
              },
            ),
            const Divider(),
            ListTile(
              leading: const Icon(Icons.privacy_tip),
              title: const Text('Privacy Preferences'),
              trailing: const Icon(Icons.arrow_forward_ios),
              onTap: () {
                Get.to(const PrivacyPreferencesPage());
              },
            ),
            const Divider(),
            ListTile(
              leading: const Icon(Icons.delete_forever),
              title: const Text('Delete Account'),
              trailing: const Icon(Icons.arrow_forward_ios),
              onTap: () {
                Get.to(const DeleteAccountPage());
              },
            ),
          ],
        ),
      ),
    );
  }
}

class ChangePasswordPage extends StatelessWidget {
  const ChangePasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Change Password'),
      ),
      body: const Center(
        child: Text('Change Password Page Content'),
      ),
    );
  }
}

class TwoFactorAuthenticationPage extends StatelessWidget {
  const TwoFactorAuthenticationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Two-Factor Authentication'),
      ),
      body: const Center(
        child: Text('Two-Factor Authentication Page Content'),
      ),
    );
  }
}

class PrivacyPreferencesPage extends StatelessWidget {
  const PrivacyPreferencesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Privacy Preferences'),
      ),
      body: const Center(
        child: Text('Privacy Preferences Page Content'),
      ),
    );
  }
}

class DeleteAccountPage extends StatelessWidget {
  const DeleteAccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Delete Account'),
      ),
      body: const Center(
        child: Text('Delete Account Page Content'),
      ),
    );
  }
}

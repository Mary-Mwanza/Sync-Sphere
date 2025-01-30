import 'package:flutter/material.dart';

class VoiceControlSettingsPage extends StatelessWidget {
  const VoiceControlSettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Voice Control Settings'),
      ),
      body: const Center(
        child: Text('Voice Control Settings Page Content'),
      ),
    );
  }
}

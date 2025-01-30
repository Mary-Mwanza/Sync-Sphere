
import 'package:flutter/material.dart';
import 'package:s_sphere/View/widgets/bottomnavigator.dart';



class AddView extends StatelessWidget {
  AddView({super.key});

  int _currentStep = 0;

  @override
  Widget build(BuildContext context) {
    // productController.loadProducts();
    // buttonController.loadButton();
    return SafeArea(
        child: Scaffold(
            backgroundColor: Colors.grey[200],
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
            body: Stepper(
              currentStep: _currentStep,
              onStepTapped: (step) => setState(() => _currentStep = step),
              onStepContinue: () {
                if (_currentStep < 4) {
                  setState(() => _currentStep += 1);
                } else {
                  // Handle completion
                }
              },
              onStepCancel: () {
                if (_currentStep > 0) {
                  setState(() => _currentStep -= 1);
                }
              },
              steps: [
                Step(
                  title: const Text('Select Device Type'),
                  content: DeviceTypeSelection(),
                  isActive: _currentStep >= 0,
                  state:
                      _currentStep > 0 ? StepState.complete : StepState.indexed,
                ),
                Step(
                  title: const Text('Device Discovery'),
                  content: DeviceDiscovery(),
                  isActive: _currentStep >= 1,
                  state:
                      _currentStep > 1 ? StepState.complete : StepState.indexed,
                ),
                Step(
                  title: const Text('Connect to Device'),
                  content: ConnectToDevice(),
                  isActive: _currentStep >= 2,
                  state:
                      _currentStep > 2 ? StepState.complete : StepState.indexed,
                ),
                Step(
                  title: const Text('Configure Device'),
                  content: ConfigureDevice(),
                  isActive: _currentStep >= 3,
                  state:
                      _currentStep > 3 ? StepState.complete : StepState.indexed,
                ),
                Step(
                  title: const Text('Confirmation'),
                  content: ConfirmationScreen(),
                  isActive: _currentStep >= 4,
                  state: _currentStep == 4
                      ? StepState.complete
                      : StepState.indexed,
                ),
              ],
            ),
            bottomNavigationBar: bottombar()));
  }
}

void setState(int Function() param0) {}

class DeviceTypeSelection extends StatelessWidget {
  const DeviceTypeSelection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          title: const Text('Light'),
          leading: Radio(
              value: 'light', groupValue: 'deviceType', onChanged: (value) {}),
        ),
        ListTile(
          title: const Text('Thermostat'),
          leading: Radio(
              value: 'thermostat',
              groupValue: 'deviceType',
              onChanged: (value) {}),
        ),
        ListTile(
          title: const Text('Camera'),
          leading: Radio(
              value: 'camera', groupValue: 'deviceType', onChanged: (value) {}),
        ),
        // Add more device types as needed
      ],
    );
  }
}

class DeviceDiscovery extends StatelessWidget {
  const DeviceDiscovery({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Text('Searching for devices...'),
        CircularProgressIndicator(),
        // You can add actual device discovery logic here
      ],
    );
  }
}

class ConnectToDevice extends StatelessWidget {
  const ConnectToDevice({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Text('Connecting to the device...'),
        CircularProgressIndicator(),
        // You can add actual device connection logic here
      ],
    );
  }
}

class ConfigureDevice extends StatelessWidget {
  const ConfigureDevice({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        TextField(
          decoration: InputDecoration(labelText: 'Device Name'),
        ),
        // Add more configuration options as needed
      ],
    );
  }
}

class ConfirmationScreen extends StatelessWidget {
  const ConfirmationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text('Device added successfully!'),
        ElevatedButton(
          onPressed: () {
            // Navigate to home screen or device list
          },
          child: const Text('Finish'),
        ),
      ],
    );
  }
}

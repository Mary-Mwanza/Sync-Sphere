import 'package:flutter/material.dart';
import 'package:s_sphere/View/widgets/bottomnavigator.dart';



class SchedulePage extends StatefulWidget {
  const SchedulePage({super.key});

  @override
  SchedulePageState createState() => SchedulePageState();
}

class SchedulePageState extends State<SchedulePage> {
  List<String> Devices = ['Select Device', 'Lights', 'AC', 'Dish Washer'];
  String selectedDevice = 'Select Device';

  List<String> Events = ['Select Event', 'On', 'Off', 'Wash'];
  String selectedEvent = 'Select Event';

  List<String> repeatOptions = [
    'None',
    'Daily',
    'Weekly',
    'Monthly'
  ]; // Repeat options

  String selectedRepeat = 'None'; // Default selected repeat option

  @override
  Widget build(BuildContext context) {
    // productController.loadProducts();
    // buttonController.loadButton();
    return SafeArea(
        child: Scaffold(
            backgroundColor: Colors.white,
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
            body: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Card(
                margin: const EdgeInsets.symmetric(vertical: 5),
                color: const Color.fromARGB(255, 225, 225, 225),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    
                    children: [
                      Row(
                        children: [
                          const Text(
                            'Device:',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(width: 20),
                          DropdownButton<String>(
                            value: selectedDevice,
                            onChanged: (newValue) {
                              // setState(() {
                              //   selectedApp = newValue!;
                              // });
                            },
                            items: Devices.map((app) {
                              return DropdownMenuItem<String>(
                                value: app,
                                child: Text(app),
                              );
                            }).toList(),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          const Text(
                            'Event:',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(width: 20),
                          DropdownButton<String>(
                            value: selectedEvent,
                            onChanged: (newValue) {
                              // setState(() {
                              //   selectedApp = newValue!;
                              // });
                            },
                            items: Events.map((app) {
                              return DropdownMenuItem<String>(
                                value: app,
                                child: Text(app),
                              );
                            }).toList(),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          const Text(
                            'Repeat:',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(width: 20),
                          DropdownButton<String>(
                            value: selectedRepeat,
                            onChanged: (newValue) {
                              // setState(() {
                              //   selectedRepeat = newValue!;
                              // });
                            },
                            items: repeatOptions.map((repeat) {
                              return DropdownMenuItem<String>(
                                value: repeat,
                                child: Text(repeat),
                              );
                            }).toList(),
                          ),
                          const SizedBox(width: 40),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                elevation: 4,
                                backgroundColor: Colors.grey[700],
                                shadowColor: Colors.transparent),
                            onPressed: () {
                              // Implement scheduling logic here
                              print(
                                  'Scheduled event for $selectedDevice to repeat $selectedRepeat');
                            },
                            child: const Text('Schedule Event'),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            bottomNavigationBar: bottombar()));
  }
}

import 'package:flutter/material.dart';

class RoomPage extends StatelessWidget {
  bool isSwitched = true;
  RoomPage({super.key});

  @override
  Widget build(BuildContext context) {
    // productController.loadProducts();
    // buttonController.loadButton();
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.grey[700],
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text('Living Room'),
        actions: [
          Switch(
            value: isSwitched,
            onChanged: (value) {
              // setState(() {
              //   isSwitched = value;
              // });
            },
          )
          // if (wishController2.wishlist.isNotEmpty)
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.all(4.0),
        children: [
          Card(
            margin: const EdgeInsets.symmetric(vertical: 5),
            color: Colors.grey[200],
            child: Image.asset(
              'assets/images/Video.jpg',
              // width: 390,
              // height: 250,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                ElevatedButton(
                  onPressed: () async {},
                  style: ElevatedButton.styleFrom(
                    elevation: 4,
                    backgroundColor: Colors.black45,
                  ),
                  child: const Text(
                    'All',
                    style: TextStyle(fontSize: 14, color: Colors.white),
                  ),
                ),
                const SizedBox(
                  width: 6,
                ),
                ElevatedButton(
                  onPressed: () async {},
                  style: ElevatedButton.styleFrom(
                    elevation: 4,
                    backgroundColor: Colors.black45,
                  ),
                  child: const Text(
                    'Lights',
                    style: TextStyle(fontSize: 14, color: Colors.white),
                  ),
                ),
                const SizedBox(
                  width: 6,
                ),
                ElevatedButton(
                  onPressed: () async {},
                  style: ElevatedButton.styleFrom(
                    elevation: 4,
                    backgroundColor: Colors.black45,
                  ),
                  child: const Text(
                    'Camera',
                    style: TextStyle(fontSize: 14, color: Colors.white),
                  ),
                ),
                const SizedBox(
                  width: 6,
                ),
                ElevatedButton(
                  onPressed: () async {},
                  style: ElevatedButton.styleFrom(
                    elevation: 4,
                    backgroundColor: Colors.black45,
                  ),
                  child: const Text(
                    'Entertainment',
                    style: TextStyle(fontSize: 14, color: Colors.white),
                  ),
                ),
                const SizedBox(
                  width: 6,
                ),
                ElevatedButton(
                  onPressed: () async {},
                  style: ElevatedButton.styleFrom(
                    elevation: 4,
                    backgroundColor: Colors.black45,
                  ),
                  child: const Text(
                    'Air Conditioner',
                    style: TextStyle(fontSize: 14, color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Padding(
            padding: const EdgeInsets.all(1.0),
            child: GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 1.0,
                mainAxisSpacing: 1.0,
                childAspectRatio: 2.0,
                shrinkWrap: true,
                children: [
                  RoomCard2(
                    description: 'Smart Light',
                    icon: Icons.light,
                  ),
                  RoomCard2(
                    description: 'Smart Light',
                    icon: Icons.light,
                  ),
                  RoomCard2(
                    description: 'Smart Light',
                    icon: Icons.light,
                  ),
                  RoomCard2(
                    description: 'Smart Light',
                    icon: Icons.light,
                  ),
                  RoomCard2(
                    description: 'Smart Light',
                    icon: Icons.light,
                  ),
                  RoomCard2(
                    description: 'Smart Light',
                    icon: Icons.light,
                  ),
                ]),
          ),
        ],
      ),
    ));
  }
}

class RoomCard2 extends StatelessWidget {
  bool isSwitched = false;
  final IconData icon;
  final String description;

  RoomCard2({super.key, 
    required this.icon,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        child: Card(
      color: Colors.white54,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Container(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                Column(
                  children: [
                    Text(
                      description,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                          color: Color.fromARGB(255, 47, 47, 47),
                          fontWeight: FontWeight.bold),
                    ),
                    Switch(
                      value: isSwitched,
                      onChanged: (value) {
                        // setState(() {
                        //   isSwitched = value;
                        // });
                      },
                    )
                  ],
                ),
                const SizedBox(
                  width: 20,
                ),
                Icon(icon, size: 45.0, color: Colors.cyan),
              ],
            ),
          ],
        ),
      ),
    ));
  }
}

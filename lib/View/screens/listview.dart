// import 'package:arts/controller/cart_controller2.dart';
// import 'package:arts/controller/routes.dart';

// import 'package:arts/view/widgets/bottom.dart';
// import 'package:arts/view/widgets/cart.dart';
// import 'package:arts/view/widgets/category.dart';
// import 'package:arts/view/widgets/mybutton.dart';
// import 'package:arts/view/widgets/mylist.dart';
import 'package:flutter/material.dart';
import 'package:s_sphere/View/screens/Room.dart';
import 'package:s_sphere/View/screens/climate.dart';
import 'package:s_sphere/View/screens/devices.dart';
import 'package:s_sphere/View/screens/energy.dart';
import 'package:s_sphere/View/screens/security.dart';
import 'package:s_sphere/View/widgets/bottomnavigator.dart';

import '../widgets/categoryCard.dart';

// import '../../controller/category_controller.dart';
// import '../../controller/productcontroller.dart';
// import '../../controller/wish_controller2.dart';
// import '../widgets/custom_drawer.dart';
// import '../widgets/wish.dart';

class MyListView extends StatelessWidget {
  const MyListView({super.key});

  @override
  Widget build(BuildContext context) {
    // productController.loadProducts();
    // buttonController.loadButton();
    return SafeArea(
        child: Scaffold(
            backgroundColor: Colors.grey[600],
            appBar: AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0,
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
              child: GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 16.0,
                mainAxisSpacing: 16.0,
                children: [
                  CategoryCard(
                    icon: Icons.flash_on,
                    title: 'Energy',
                    description: 'Monitor and manage energy usage',
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => EnergyPage()),
                      );
                    },
                  ),
                  CategoryCard(
                    icon: Icons.devices,
                    title: 'Devices',
                    description: 'Manage all connected devices',
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => DevicePage()),
                      );
                    },
                  ),
                  CategoryCard(
                    icon: Icons.security,
                    title: 'Security',
                    description: 'Control and monitor security settings',
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SecurityPage()),
                      );
                    },
                  ),
                  CategoryCard(
                    icon: Icons.thermostat,
                    title: 'House Climate',
                    description: 'Adjust and monitor house climate',
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ClimatePage()),
                      );
                    },
                  ),
                  CategoryCard(
                    icon: Icons.chair_outlined,
                    title: 'Rooms',
                    description: 'Monitor devices in different rooms',
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => RoomPage()),
                      );
                    },
                  ),
                ],
              ),
            ),
            bottomNavigationBar: bottombar()));
  }
}



// Placeholder pages for different categories



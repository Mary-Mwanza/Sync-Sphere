import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../screens/add.dart';
import '../screens/home.dart';
import '../screens/listview.dart';
import '../screens/schedule.dart';
import '../screens/settings.dart';

class bottombar extends StatelessWidget {
  const bottombar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.symmetric(horizontal: 1.0),
        child: BottomAppBar(
            elevation: 50,
            color: const Color(0xFF96979E),
            shape: const CircularNotchedRectangle(),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                  icon: const Icon(Icons.home_outlined),
                  onPressed: () {
                    Get.to(MyHomePage());
                  },
                ),
                IconButton(
                  icon: const Icon(Icons.widgets_outlined),
                  onPressed: () async {
                    // await categoryController.loadButton();
                    Get.to(const MyListView());
                  },
                ),
                IconButton(
                  onPressed: () {
                    Get.to(AddView());
                  },
                  icon: const Stack(
                    children: [
                      Icon(Icons.add),
                      // if (wishController2.wishlist.isNotEmpty)
                    ],
                  ),
                ),
                IconButton(
                  onPressed: () async {
                    // await cartController2.loadCart();
                    Get.to(SchedulePage());
                  },
                  icon: const Stack(
                    children: [
                      Icon(Icons.timer_sharp),
                      // if (cartController2.carts.isNotEmpty)
                    ],
                  ),
                ),
                IconButton(
                  onPressed: () async {
                    // await cartController2.loadCart();
                    Get.to(SettingsPage());
                  },
                  icon: const Stack(
                    children: [
                      Icon(Icons.settings_outlined),
                      // if (cartController2.carts.isNotEmpty)
                    ],
                  ),
                ),
              ],
            )));
  }
}

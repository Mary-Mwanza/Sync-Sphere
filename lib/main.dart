import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:s_sphere/Controller/routes.dart';
// import 'Controllers/routes.dart';

// import 'controller/mylist.dart';

void main() {
  // HttpOverrides.global = new MyHttpOverrides();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: Routes.LIST,
      getPages: Routes.routes,
    );
  }
}

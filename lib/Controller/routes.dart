
// ignore_for_file: constant_identifier_names

import 'package:get/get.dart';
import 'package:s_sphere/View/screens/home.dart';
import 'package:s_sphere/View/screens/listview.dart';
import 'package:s_sphere/View/screens/login.dart';
import 'package:s_sphere/View/screens/schedule.dart';
import 'package:s_sphere/View/screens/settings.dart';
import 'package:s_sphere/View/screens/signup.dart';
import 'package:s_sphere/View/screens/splash.dart';


class Routes {
  static const SPLASH = '/splash';
  static const HOME = '/home';
  static const SIGNUP = '/signup';
  static const LOGIN = '/login';
  static const LIST = '/listview';
  static const SCHEDULE = '/schedule';
    static const SETTINGS = '/schedule';

  static final routes = [
    // GetPage(name: LIST, page: () => const MyAPI()),
    GetPage(name: SPLASH, page: () => const SplashScreen()),
    GetPage(name: LOGIN, page: () => MyLogIn()),
    GetPage(name: HOME, page: () => MyHomePage()),
    GetPage(name: SIGNUP, page: () => MySignUp()),
    GetPage(name: LIST, page: () => const MyListView()),
    GetPage(name: SCHEDULE, page: () => SchedulePage()),
    GetPage(name: SETTINGS, page: () => SettingsPage()),
  ];
}

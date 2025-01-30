
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:s_sphere/View/screens/login.dart';



class ClientController extends GetxController {
  final email = TextEditingController();
  final password = TextEditingController();
  final name = TextEditingController();

  Future<void> createClient(
      {required String name,
      required String email,
      required String password}) async {
    try {
      final response = await http.post(
        Uri.parse("http://10.0.2.2/registration/signup.php"),
        body: {
          'name': name,
          'email': email,
          'password': password,
        },
        // headers: {
        //   'Content-Type': 'application/json; charset=UTF-8',
        // },
      );

      if (response.statusCode == 200) {
        Get.snackbar('Success', 'Now login');
      } else {
        print('asdf ${response.body}');
        Get.to(MyLogIn());
      }
    } catch (e) {
      print(e);
      print(e);
      Get.snackbar('Success', e.toString());
    }
  }
}

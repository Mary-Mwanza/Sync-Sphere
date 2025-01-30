import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class loginController extends GetxController {
  final password = TextEditingController();
  final userName = TextEditingController();

  Future<bool> loginClient(
      {required String name, required String password}) async {
    try {
      final response = await http.post(
        Uri.parse("http://10.0.2.2/registration/login.php"),
        body: {
          'name': name,
          'password': password,
        },
        // headers: {
        //   'Content-Type': 'application/json; charset=UTF-8',
        // },
      );

      if (response.statusCode == 200) {
        Get.snackbar('Success', 'Login successful');
        print(response.body);
        return true;
      } else {
        Get.snackbar('Error', response.body);
        print('asdf ${response.body}');
        return false;
      }
    } catch (e) {
      print(e);
      print(e);
      Get.snackbar('Error', e.toString());
      rethrow;
    }
  }
}

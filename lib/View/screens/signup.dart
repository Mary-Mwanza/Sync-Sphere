import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:s_sphere/Controller/login%20controller.dart';



class MySignUp extends StatelessWidget {
  final controller = Get.put(loginController());
  MySignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Container(
      decoration: const BoxDecoration(
        color: Colors.white,
      ),
      child: ListView(children: <Widget>[
        Padding(
          padding: const EdgeInsets.fromLTRB(10, 100, 10, 60),
          child: Image.asset(
            'assets/images/SS2.jpg',
            height: 50,
          ),
        ),
        Container(
          padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
          child: const TextField(
            style: TextStyle(fontSize: 14, color: Colors.grey),
            // controller: controller.userName,
            decoration: InputDecoration(
              hintText: "UserName",
              filled: true,
              fillColor: Color.fromARGB(255, 222, 221, 221),
              enabledBorder: OutlineInputBorder(
                borderSide:
                    BorderSide(color: Color.fromARGB(255, 222, 221, 221)),
                // borderRadius: BorderRadius.circular(12.0),
              ),
            ),
          ),
        ),
        Container(
          padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
          child: const TextField(
            style: TextStyle(fontSize: 14, color: Colors.grey),
            // controller: controller.userName,
            decoration: InputDecoration(
              hintText: "email@domain.com",
              filled: true,
              fillColor: Color.fromARGB(255, 222, 221, 221),
              enabledBorder: OutlineInputBorder(
                borderSide:
                    BorderSide(color: Color.fromARGB(255, 222, 221, 221)),
                // borderRadius: BorderRadius.circular(12.0),
              ),
            ),
          ),
        ),
        Container(
          padding: const EdgeInsets.fromLTRB(10, 10, 10, 30),
          child: const TextField(
            style: TextStyle(fontSize: 14, color: Colors.grey),
            // controller: controller.userName,
            decoration: InputDecoration(
              hintText: "***********",
              filled: true,
              fillColor: Color.fromARGB(255, 222, 221, 221),
              enabledBorder: OutlineInputBorder(
                borderSide:
                    BorderSide(color: Color.fromARGB(255, 222, 221, 221)),
                // borderRadius: BorderRadius.circular(12.0),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
              height: 50,
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  gradient: const LinearGradient(colors: [
                    Colors.black,
                    Colors.indigo,
                    Colors.black,
                  ])),
              child: ElevatedButton(
                onPressed: () async {
                  //signup screen
                  // Future<bool> loginUser = controller.loginClient(
                  //     name: controller.userName.text.trim(),
                  //     password: controller.password.text.trim());
                  // if (await loginUser) {
                  //   Get.toNamed(Routes.HOME);
                  // } else {
                  //   Get.snackbar('Error', 'Logging in');
                  // }
                },
                style: ElevatedButton.styleFrom(
                    elevation: 4,
                    backgroundColor: Colors.transparent,
                    shadowColor: Colors.transparent),
                child: const Text(
                  'Sign Up',
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
              )),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Registered?",
              style: TextStyle(fontSize: 16, color: Colors.black),
            ),
            TextButton(
              onPressed: () {
                // Get.toNamed(Routes.SIGNUP);
              },
              child: const Text(
                'Log In',
                style: TextStyle(fontSize: 17, color: Colors.blue),
              ),
            )
          ],
        ),
        const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'or continue with',
              style: TextStyle(color: Colors.grey),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(10, 20, 10, 0),
          child: Container(
              height: 50,
              padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: const Color.fromARGB(255, 222, 221, 221),
              ),
              child: ElevatedButton(
                onPressed: () async {
                  //signup screen
                },
                style: ElevatedButton.styleFrom(
                    elevation: 0,
                    backgroundColor: Colors.transparent,
                    shadowColor: Colors.transparent),
                child: const Text(
                  'Google',
                  style: TextStyle(fontSize: 18, color: Colors.black),
                ),
              )),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "By clicking continue, you agree to our",
              style: TextStyle(fontSize: 15, color: Colors.grey),
            ),
            TextButton(
              onPressed: () {
                // Get.toNamed(Routes.SIGNUP);
              },
              child: const Text(
                'Terms of Service.',
                style: TextStyle(fontSize: 16, color: Colors.black),
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "and",
              style: TextStyle(fontSize: 15, color: Colors.grey),
            ),
            TextButton(
              onPressed: () {
                // Get.toNamed(Routes.SIGNUP);
              },
              child: const Text(
                'Privacy Policy.',
                style: TextStyle(fontSize: 16, color: Colors.black),
              ),
            ),
          ],
        ),
      ]),
    )));
  }
}

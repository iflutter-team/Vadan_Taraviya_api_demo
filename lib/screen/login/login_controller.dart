import 'package:api_demo/screen/home/home_screen.dart';
import 'package:api_demo/screen/signup/signup_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginPageController extends GetxController {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  void loginButton() {
    Get.off(
      () => HomeScreen(),
    );
  }

  void textSignUpButton() {
    Get.to(() => signup());
  }
}

import 'package:api_demo/screen/login/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUpPageController extends GetxController {
  TextEditingController name = TextEditingController();
  TextEditingController age = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  void signUpButton() {
    Get.to(() => loginscreen());
  }
}

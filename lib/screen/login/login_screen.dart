import 'package:api_demo/screen/login/login_controller.dart';
import 'package:api_demo/screen/login/login_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class loginscreen extends StatelessWidget {
  const loginscreen({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(LoginPageController());
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          loginPageTextField(),
          loginPagePasswordTextField(),
          loginButton(),
          textSignUpButton(),
        ],
      ),
    );
  }
}

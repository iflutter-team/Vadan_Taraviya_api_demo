// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'signup_controller.dart';
import 'signup_widget.dart';

// ignore: camel_case_types
class signup extends StatelessWidget {
  signup({super.key});
  SignUpPageController signUpPageController = Get.put(SignUpPageController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          signUpPageNameTextField(),
          signUpPageageTextField(),
          signUpPageEmailTextField(),
          signUpPagePasswordTextField(),
          signUpButton(),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../common/common_text_field.dart';
import 'login_controller.dart';

Widget loginPageTextField() {
  return GetBuilder<LoginPageController>(
    builder: (controller) => Padding(
      padding: const EdgeInsets.all(10.0),
      child: commonTextField(
          "e-mail",
          "e-mail",
          const Icon(Icons.mail_lock_outlined),
          false,
          controller.email,
          TextInputType.emailAddress),
    ),
  );
}

Widget loginPagePasswordTextField() {
  return GetBuilder<LoginPageController>(
    builder: (controller) => Padding(
      padding: const EdgeInsets.all(10.0),
      child: commonTextField("Password", "Password", const Icon(Icons.lock),
          true, controller.password, TextInputType.text),
    ),
  );
}

Widget loginButton() {
  return GetBuilder<LoginPageController>(
    builder: (controller) => Padding(
      padding: const EdgeInsets.all(10.0),
      child: ElevatedButton(
        onPressed: () => controller.loginButton(),
        child: const Text('Login'),
      ),
    ),
  );
}

Widget textSignUpButton() {
  return GetBuilder<LoginPageController>(
    builder: (controller) => Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text("Don't have account?"),
        TextButton(
          onPressed: () => controller.textSignUpButton(),
          child: const Text('Sign Up'),
        ),
      ],
    ),
  );
}

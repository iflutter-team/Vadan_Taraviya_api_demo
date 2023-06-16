import 'package:api_demo/common/common_text_field.dart';
import 'package:api_demo/screen/signup/signup_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

Widget signUpPageNameTextField() {
  return GetBuilder<SignUpPageController>(
    builder: (controller) => Padding(
      padding: const EdgeInsets.all(10.0),
      child: commonTextField(
          "Name",
          "Name",
          const Icon(Icons.account_box_rounded),
          false,
          controller.name,
          TextInputType.text),
    ),
  );
}

Widget signUpPageageTextField() {
  return GetBuilder<SignUpPageController>(
    builder: (controller) => Padding(
      padding: const EdgeInsets.all(10.0),
      child: commonTextField("Age", "Age", const Icon(Icons.man), false,
          controller.age, TextInputType.number),
    ),
  );
}

Widget signUpPageEmailTextField() {
  return GetBuilder<SignUpPageController>(
    builder: (controller) => Padding(
      padding: const EdgeInsets.all(10.0),
      child: commonTextField("E-mail", "e-mail", const Icon(Icons.mail), false,
          controller.email, TextInputType.emailAddress),
    ),
  );
}

Widget signUpPagePasswordTextField() {
  return GetBuilder<SignUpPageController>(
    builder: (controller) => Padding(
      padding: const EdgeInsets.all(10.0),
      child: commonTextField("Password", "Password", const Icon(Icons.lock),
          true, controller.password, TextInputType.text),
    ),
  );
}

Widget signUpButton() {
  return GetBuilder<SignUpPageController>(
    builder: (controller) => Padding(
      padding: const EdgeInsets.only(bottom: 50, top: 30),
      child: SizedBox(
        height: 50,
        width: 200,
        child: ElevatedButton(
          onPressed: () => controller.signUpButton(),
          child: const Text('Sign Up'),
        ),
      ),
    ),
  );
}

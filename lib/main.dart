import 'package:api_demo/screen/login/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  //await Firebase.initializeApp();
  runApp(
    const GetMaterialApp(
      home: loginscreen(),
      debugShowCheckedModeBanner: false,
    ),
  );
}
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'home_controller.dart';
import 'home_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    Get.put(HomeScreencontroller());
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Screen"),
      ),
      body: productList(),
      floatingActionButton: floatingActionButtonadd(),
    );
  }
}

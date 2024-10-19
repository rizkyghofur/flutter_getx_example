import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          FloatingActionButton(
            onPressed: controller.increment,
            child: const Icon(Icons.add),
          ),
          const SizedBox(height: 10),
          FloatingActionButton(
            onPressed: controller.decrement,
            child: const Icon(Icons.remove),
          ),
        ],
      ),
      appBar: AppBar(
        title: const Text('Home'),
        centerTitle: true,
      ),
      body: Obx(() {
        return Center(
          child: Text(
            controller.count.value.toString(),
            style: const TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
          ),
        );
      }),
    );
  }
}

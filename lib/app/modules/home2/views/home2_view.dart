import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/home2_controller.dart';

class Home2View extends GetView<Home2Controller> {
  const Home2View({super.key});
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
        title: const Text('Home2'),
        centerTitle: true,
      ),
      body: Obx(() {
        return Center(
          child: Text(
            controller.counterModel.value.number.toString(),
            style: const TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
          ),
        );
      }),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../home/views/home_view.dart';
import '../../home2/views/home2_view.dart';
import '../controllers/bottom_navbar_controller.dart';

class BottomNavbarView extends GetView<BottomNavbarController> {
  const BottomNavbarView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(
        () => IndexedStack(
          index: controller.currentIndex.value,
          children: const [
            HomeView(),
            Home2View(),
          ],
        ),
      ),
      bottomNavigationBar: Obx(
        () => BottomNavigationBar(
          currentIndex: controller.currentIndex.value,
          onTap: controller.changeIndex,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.home_max),
              label: 'Home2',
            ),
          ],
        ),
      ),
    );
  }
}

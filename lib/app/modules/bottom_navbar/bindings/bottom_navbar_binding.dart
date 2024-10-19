import 'package:get/get.dart';

import '../../home/bindings/home_binding.dart';
import '../../home2/bindings/home2_binding.dart';
import '../controllers/bottom_navbar_controller.dart';

class BottomNavbarBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<BottomNavbarController>(
      () => BottomNavbarController(),
    );
    HomeBinding().dependencies();
    Home2Binding().dependencies();
  }
}

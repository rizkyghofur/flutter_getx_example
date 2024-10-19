import 'package:get/get.dart';

class HomeController extends GetxController {
  final count = 0.obs;

  @override
  void onInit() {
    //do something
    super.onInit();
  }

  @override
  void onReady() {
    //do something
    super.onReady();
  }

  @override
  void onClose() {
    //do something
    super.onClose();
  }

  void increment() => count.value++;

  void decrement() => count.value--;
}

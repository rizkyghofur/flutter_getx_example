import 'package:get/get.dart';

import '../../../data/models/counter_model.dart';

class Home2Controller extends GetxController {
  final counterModel = CounterModel(number: 0).obs;

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

  void increment() => counterModel.update((val) {
        val!.number++;
      });

  void decrement() => counterModel.update((val) {
        val!.number--;
      });
}

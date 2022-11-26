import 'package:flutter/foundation.dart';
import 'package:get/get.dart';

class MyController extends GetxController {
  var count = 0;

  void increment() async {
    // we want for 3 second before updating the count
    await Future.delayed(const Duration(seconds: 3));

    count++;
    update();
  }

  // void cleanUpTask() {
  //   if (kDebugMode) {
  //     print("Cleaned up task");
  //   }
  // }

  // better approach for onInit and onClose controller events
  @override
  void onInit() {
    super.onInit();
    print("Init called");
    increment();
  }

  @override
  void onClose() {
    super.onClose();
    print("closed");
  }
}

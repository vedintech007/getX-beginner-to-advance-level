import 'package:get/get.dart';

class UniqueIdController extends GetxController {
  var count = 0;

  void increment() async {
    for (int i = 0; i < 20; i++) {
      await Future.delayed(const Duration(seconds: 1));
      print("Init done");
      count++;
      // we update values with respective ids
      update(['txtCount', 'text2Count']);
    }
  }

  @override
  void onInit() {
    super.onInit();

    increment();
  }
}

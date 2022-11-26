// ignore_for_file: avoid_print

import 'package:get/get.dart';

class WorkersController extends GetxController {
  var count = 0.obs;

  void increment() {
    count++;
  }

  @override
  void onInit() {
    super.onInit();

    // called whenever the value of the variable changes
    ever(count, (_) => print(count));

    // called whenever a value of a variable from a list changes
    // everAll([count], (_) => print(count));

    // called only once when the variable value changes
    // once(count, (_) => print(count));

    // called everytime the user stops typing for 1 second
    // debounce(
    //   count,
    //   (_) {
    //     print("The user just stoped typing for 2 second");
    //   },

    //   // by default its one second but you can specify one
    //   time: const Duration(seconds: 2),
    // );

    /* ignores all changes withing 2 seconds
    imagine that the user can earn coins by tapping on something
    if he clicked 300 times in a minutes he will earn 300 coins using interval
    you can set the time frame for 3 seconds
    and even clicking 300 or 1000 times the max he
    will earn will be 20 coins
    the maximum he will get in a minute will be 20 coins
    clicking 300 or a million times
    */
    // interval(
    //   count,
    //   (_) => print("Ignores all the changes and print count as $count after 3 seconds"),
    //   time: const Duration(seconds: 3),
    // );
  }
}

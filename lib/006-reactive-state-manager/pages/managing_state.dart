import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mastering_getx/components/custom_button.dart';

// ignore: must_be_immutable
class ReactiveStateManaging extends StatelessWidget {
  ReactiveStateManaging({super.key});

  /* 
  Different ways of making variable observable are:
  1. - using Rx type
    final name = RxString("");
    final isLoggedIn = RxBool(false);
    final count = RxInt(0);
    final balance RxDouble(0.0);
    final List RxList<String>([]);
    final myMap = RxMap<String, int>({})

  2. - use dart generics, Rx<Type>
    final name = Rx<String>("");
    final isLoggedIn = Rx<Bool>(false);
    final count = Rx<Int>(0);
    final balance = Rx<Double>(0.0);
    final items = Rx<List>([]);
    final myMap = Rx<Map<String, int>>({});


  // custom classes - it can be any class literally
   */

  var count = 0.obs;

  void increment() {
    count++;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Obx(
              (() => Text(
                    "Count is $count",
                    style: const TextStyle(fontSize: 30),
                  )),
            ),
          ),
          const SizedBox(height: 30),
          CustomButton(
            press: () {
              increment();
            },
            btnText: "Increse Count",
          )
        ],
      ),
    );
  }
}

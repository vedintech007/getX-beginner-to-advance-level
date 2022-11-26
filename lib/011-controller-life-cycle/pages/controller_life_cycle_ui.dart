// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mastering_getx/011-controller-life-cycle/controllers/my_controller.dart';
import 'package:mastering_getx/components/custom_button.dart';

class ControllerLifeCycleUi extends StatelessWidget {
  ControllerLifeCycleUi({super.key});

  MyController myController = Get.put(MyController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Controller life cycle"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          GetBuilder<MyController>(
            // controlling what happed when controller is been initialize and disposed
            // better approach in the my_controller file
            // initState: (_) => myController.increment(),
            // dispose: (_) => myController.cleanUpTask(),
            init: MyController(),
            builder: (controller) {
              return Text("The Value is ${controller.count}");
            },
          ),
          CustomButton(
            btnText: "Increase Count by 1",
            press: () {},
          )
        ],
      ),
    );
  }
}

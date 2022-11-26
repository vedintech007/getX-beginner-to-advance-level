import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:mastering_getx/010-simple-state-manager/controllers/my_controller.dart';
import 'package:mastering_getx/components/custom_button.dart';

class SimpleStateManagerUi extends StatelessWidget {
  const SimpleStateManagerUi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          GetBuilder<MyController>(
            init: MyController(),
            builder: (controller) {
              return Text(
                "Count is ${controller.count}",
                style: const TextStyle(
                  fontSize: 30,
                ),
              );
            },
          ),
          const SizedBox(height: 50),
          CustomButton(
            btnText: "Increse Count SSM",
            press: () {
              Get.find<MyController>().increment();
            },
          )
        ],
      ),
    );
  }
}

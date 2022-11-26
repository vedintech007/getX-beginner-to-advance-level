// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mastering_getx/009-reactive-state-manager-using-getX-type-controller/controller/my_controller.dart';
import 'package:mastering_getx/components/custom_button.dart';

class TypeControllerUi extends StatelessWidget {
  TypeControllerUi({super.key});

  MyController myController = Get.put(MyController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // this creates Getx with type MyController
          GetX<MyController>(
            // create and instance of the the MyController (can be created at the top as well )
            // init: MyController(),
            // controller will automatically be an instance of MyController
            builder: (controller) {
              return Text("The value is ${controller.count}");
            },
          ),

          const SizedBox(height: 50),

          CustomButton(
            btnText: "Increse Count by 1",
            press: () {
              myController.increment();
              // if the instance is not created at the top but initialize by the builder
              // Get.find<MyController>().increment();
            },
          )
        ],
      ),
    );
  }
}

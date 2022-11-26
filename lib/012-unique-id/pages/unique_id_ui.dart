import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mastering_getx/012-unique-id/controller/unique_id_controller.dart';
import 'package:mastering_getx/components/custom_button.dart';

class UniqueIdUI extends StatelessWidget {
  const UniqueIdUI({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Unqiue ID")),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          GetBuilder<UniqueIdController>(
            init: UniqueIdController(),
            id: "txtCount",
            builder: (controller) {
              return Text(
                "The value is ${controller.count}",
                style: const TextStyle(fontSize: 30, color: Colors.black),
              );
            },
          ),
          const SizedBox(height: 20),
          GetBuilder<UniqueIdController>(
            init: UniqueIdController(),
            // this unique id can be used to target a specific item amoung others
            id: "text2Count",
            builder: (controller) {
              return Text(
                "The value is ${controller.count / 2}",
                style: const TextStyle(fontSize: 30, color: Colors.black),
              );
            },
          ),
          const SizedBox(height: 50),
          CustomButton(
            btnText: "Increase",
            press: () {},
          )
        ],
      ),
    );
  }
}

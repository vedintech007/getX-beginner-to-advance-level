// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mastering_getx/013-workers/controllers/workers_controller.dart';
import 'package:mastering_getx/components/custom_button.dart';

class WorkersUi extends StatelessWidget {
  WorkersUi({super.key});

  WorkersController workersController = Get.put<WorkersController>(WorkersController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Workers"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CustomButton(
            btnText: "Increment",
            press: () {
              workersController.increment();
            },
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: TextField(
              onChanged: ((value) {
                workersController.increment();
              }),
            ),
          )
        ],
      ),
    );
  }
}

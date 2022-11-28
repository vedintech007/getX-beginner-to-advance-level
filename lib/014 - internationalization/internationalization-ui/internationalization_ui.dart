import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mastering_getx/014%20-%20internationalization/controllers.dart/internationalization_controller.dart';
import 'package:mastering_getx/components/custom_button.dart';

class InternationalizationUi extends StatelessWidget {
  InternationalizationUi({super.key});

  InternationalizationController internationalizationController = Get.put(InternationalizationController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Internationalization "),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "hello".tr,
            style: const TextStyle(
              fontSize: 25,
            ),
          ),
          CustomButton(
            btnText: "Hindi",
            press: () {
              internationalizationController.changeLanguage('hi', 'IN');
            },
          ),
          CustomButton(
            btnText: "French",
            press: () {
              internationalizationController.changeLanguage('fr', 'FR');
            },
          ),
          CustomButton(
            btnText: "English",
            press: () {
              internationalizationController.changeLanguage('en', 'US');
            },
          ),
        ],
      ),
    );
  }
}

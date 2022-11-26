import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mastering_getx/007-obx-and-custom-class/pages/obx_page_ui.dart';
import 'package:mastering_getx/components/custom_button.dart';

class ObxCustomClass extends StatelessWidget {
  const ObxCustomClass({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomButton(
      btnText: "Obx ",
      press: () {
        Get.to(() => StudentUpdate());
      },
    );
  }
}

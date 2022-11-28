import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mastering_getx/010-simple-state-manager/pages/simple_state_manager_ui.dart';
import 'package:mastering_getx/00-components/custom_button.dart';

class SimpleStateManager extends StatelessWidget {
  const SimpleStateManager({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomButton(
      btnText: "Simple State Manager",
      press: () {
        Get.to(() => const SimpleStateManagerUi());
      },
    );
  }
}

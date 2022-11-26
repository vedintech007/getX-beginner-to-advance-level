import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mastering_getx/011-controller-life-cycle/pages/controller_life_cycle_ui.dart';
import 'package:mastering_getx/components/custom_button.dart';

class ControllerLifeCycle extends StatelessWidget {
  const ControllerLifeCycle({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomButton(
      btnText: "Controller Life Cycle",
      press: () {
        Get.to(() => ControllerLifeCycleUi());
      },
    );
  }
}

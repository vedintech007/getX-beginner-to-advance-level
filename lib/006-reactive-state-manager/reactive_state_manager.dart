import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mastering_getx/006-reactive-state-manager/pages/managing_state.dart';
import 'package:mastering_getx/00-components/custom_button.dart';

class ReactiveStateManager extends StatelessWidget {
  const ReactiveStateManager({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomButton(
      btnText: "Reactive State Manager",
      press: () {
        Get.to(() => ReactiveStateManaging());
      },
    );
  }
}

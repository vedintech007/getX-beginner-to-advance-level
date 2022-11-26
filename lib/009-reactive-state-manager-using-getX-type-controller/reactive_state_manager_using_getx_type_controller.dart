import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mastering_getx/009-reactive-state-manager-using-getX-type-controller/pages/type_controller_ui.dart';
import 'package:mastering_getx/components/custom_button.dart';

class ReactiveStateManagerWithTypeController extends StatelessWidget {
  const ReactiveStateManagerWithTypeController({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomButton(
      btnText: "getX type controller",
      press: () {
        Get.to(() => TypeControllerUi());
      },
    );
  }
}

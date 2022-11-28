import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mastering_getx/013-workers/workers-ui/workers_ui.dart';
import 'package:mastering_getx/00-components/custom_button.dart';

class Workers extends StatelessWidget {
  const Workers({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomButton(
      btnText: "Workers",
      press: () {
        Get.to(() => WorkersUi());
      },
    );
  }
}

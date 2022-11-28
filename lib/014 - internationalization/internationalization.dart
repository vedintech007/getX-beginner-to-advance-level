import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mastering_getx/014%20-%20internationalization/internationalization-ui/internationalization_ui.dart';
import 'package:mastering_getx/00-components/custom_button.dart';

class Internationalization extends StatelessWidget {
  const Internationalization({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomButton(
      btnText: "Internationalization",
      press: () {
        Get.to(() => InternationalizationUi());
      },
    );
  }
}

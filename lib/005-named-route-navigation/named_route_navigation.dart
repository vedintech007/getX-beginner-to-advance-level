import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mastering_getx/00-components/custom_button.dart';

class NameRoutesNavigation extends StatelessWidget {
  const NameRoutesNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomButton(
      btnText: "Named Routes Navigation",
      press: () {
        Get.toNamed("/namedRoutePage1");
      },
    );
  }
}

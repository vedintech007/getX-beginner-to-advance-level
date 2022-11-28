import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mastering_getx/00-components/custom_button.dart';
import 'package:mastering_getx/015-%20dependency-injection/pages/dependency_injection_ui.dart';

class DependencyInjection extends StatelessWidget {
  const DependencyInjection({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomButton(
      btnText: "Dependency Injection",
      press: () {
        Get.to(() => DependencyInjectionUi());
      },
    );
  }
}

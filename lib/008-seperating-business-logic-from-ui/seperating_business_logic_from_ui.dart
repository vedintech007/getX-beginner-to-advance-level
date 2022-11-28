import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mastering_getx/008-seperating-business-logic-from-ui/pages/student_ui.dart';
import 'package:mastering_getx/00-components/custom_button.dart';

class BusinessLogicFromUi extends StatelessWidget {
  const BusinessLogicFromUi({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomButton(
      btnText: "Sep BusinessLogicFromUi",
      press: () {
        Get.to(() => StudentUiPage());
      },
    );
  }
}

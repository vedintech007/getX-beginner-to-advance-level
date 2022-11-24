import 'package:flutter/material.dart';
import 'package:mastering_getx/components/custom_button.dart';

class CustomDialog extends StatelessWidget {
  const CustomDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomButton(
      btnText: "Trigger Dialog",
      press: () {},
    );
  }
}

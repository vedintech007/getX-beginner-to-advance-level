import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mastering_getx/012-unique-id/pages/unique_id_ui.dart';
import 'package:mastering_getx/00-components/custom_button.dart';

class UniqueId extends StatelessWidget {
  const UniqueId({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomButton(
      btnText: "Unqiue Id",
      press: () {
        Get.to(() => const UniqueIdUI());
      },
    );
  }
}

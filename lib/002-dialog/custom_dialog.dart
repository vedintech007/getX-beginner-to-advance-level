import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mastering_getx/components/custom_button.dart';

class CustomDialog extends StatelessWidget {
  const CustomDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomButton(
      btnText: "Dialog Box",
      press: () {
        // Get.defaultDialog();
        Get.defaultDialog(
          title: "GetX Dialog Title",
          titleStyle: const TextStyle(fontSize: 25),
          // middleText: "This is the middleText of the dialog",
          // middleTextStyle: const TextStyle(fontSize: 20),
          backgroundColor: Colors.white,
          radius: 10,
          // content overrides the middleText and has the ability to be customized
          content: Row(
            children: const [
              CircularProgressIndicator(),
              SizedBox(width: 16),
              Expanded(child: Text("Data Loading...")),
            ],
          ),

          // textCancel: "Stop",
          // cancelTextColor: Colors.black,
          // onCancel: () {},
          // textConfirm: "Proceed",
          // confirmTextColor: Colors.white,
          // onConfirm: () {},
          // buttonColor: Colors.black,

          // this overrides the textCancel and  textConfirm buttons above
          cancel: TextButton(
              onPressed: () {
                Get.back();
              },
              style: TextButton.styleFrom(
                backgroundColor: Colors.deepOrange,
              ),
              child: const Text(
                "Stop",
                style: TextStyle(
                  color: Colors.white,
                ),
              )),
          confirm: TextButton(onPressed: () {}, child: const Text("Continue")),

          // can contain lot of data, play around it`
          // actions: [
          //   TextButton(onPressed: () {}, child: Text("Action BTN")),
          //   IconButton(
          //     onPressed: () {},
          //     icon: const Icon(Icons.mail_lock),
          //   ),
          // ],
          barrierDismissible: false,
        );
      },
    );
  }
}

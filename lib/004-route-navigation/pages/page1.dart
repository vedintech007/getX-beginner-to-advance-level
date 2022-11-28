import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mastering_getx/004-route-navigation/pages/page2.dart';
import 'package:mastering_getx/00-components/custom_button.dart';

class Page1 extends StatelessWidget {
  const Page1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 50),
            child: Center(
              child: Text(
                "This is page 1 screen",
                style: TextStyle(fontSize: 20),
              ),
            ),
          ),
          CustomButton(
            press: () async {
              var data = await Get.to(() => const Page2());
              if (kDebugMode) {
                print("Data reveted is $data");
              }
            },
            btnText: "Next Page",
            btnColor: Colors.green,
          ),
          CustomButton(
            press: () {
              Get.back();
            },
            btnText: "Back Page",
            btnColor: Colors.red,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Data recieved: ${Get.arguments}",
              style: const TextStyle(fontSize: 20),
            ),
          )
        ],
      ),
    );
  }
}

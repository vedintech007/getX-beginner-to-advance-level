import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mastering_getx/components/custom_button.dart';

class Page2 extends StatelessWidget {
  const Page2({super.key});

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
                "This is page 2 screen",
                style: TextStyle(fontSize: 20),
              ),
            ),
          ),
          CustomButton(
            press: () {
              Get.back(result: "VED returned");
            },
            btnText: "Return data to page 1",
            btnColor: Colors.green,
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mastering_getx/00-components/custom_button.dart';

class NamedRoutePage2 extends StatelessWidget {
  const NamedRoutePage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            "This is last named route page",
          ),
          const SizedBox(height: 50),
          Text("Accessed data from link is ${Get.parameters['someValue']}"),
          const SizedBox(height: 50),
          CustomButton(
            press: () {
              // Get.toNamed("/namedRoutePage1");
              // Get.offNamed("/namedRoutePage1"),
              // Get.offAllNamed("/namedRoutePage1"),

              /* Dynamic links */
              // to pass data in links,
              //here we pass name and proffesion data through the link

              Get.toNamed("/namedRoutePage1?name=VED&proffesion=Software Engineer");
            },
            btnText: "Go back to named route page 1",
            btnColor: Colors.red,
          )
        ],
      ),
    );
  }
}

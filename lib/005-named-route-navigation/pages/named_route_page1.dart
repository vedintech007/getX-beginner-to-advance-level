import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mastering_getx/components/custom_button.dart';

class NamedRoutePage1 extends StatelessWidget {
  const NamedRoutePage1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            "This is is first named route page1",
          ),
          const SizedBox(height: 50),
          CustomButton(
            press: () {
              // Get.toNamed("/namedRoutePage2");
              Get.toNamed("/namedRoutePage2/123456");
            },
            btnText: "Go to named route page 2",
            btnColor: Colors.green,
          ),
          const SizedBox(height: 50),
          ConstrainedBox(
            constraints: BoxConstraints.tight(
              Size(
                Get.width / 1.2,
                Get.height / 3,
              ),
            ),
            child: Text(
              "Returned data from page 2 is ${Get.parameters['name']} and proffesion is ${Get.parameters['proffesion']}",
            ),
          ),
        ],
      ),
    );
  }
}

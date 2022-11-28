import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mastering_getx/008-seperating-business-logic-from-ui/controller/student_controller.dart';
import 'package:mastering_getx/00-components/custom_button.dart';

class StudentUiPage extends StatelessWidget {
  StudentUiPage({super.key});

  // create the instance of the student controller
  final studentController = Get.put(StudentController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Obx(
            () => Text(
              "Name is ${studentController.student.value.name}",
              style: const TextStyle(fontSize: 30),
            ),
          ),
          const SizedBox(height: 50),
          CustomButton(
            btnText: "Convert to uppercase",
            press: () {
              studentController.convertToUpperCase();
            },
          )
        ],
      ),
    );
  }
}

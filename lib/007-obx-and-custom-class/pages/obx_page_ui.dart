import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mastering_getx/007-obx-and-custom-class/pages/student.dart';
import 'package:mastering_getx/components/custom_button.dart';

class StudentUpdate extends StatelessWidget {
  StudentUpdate({super.key});

  // final student = Student(); // individual Rx
  final student = Student(name: "Maui Johnson", age: 25).obs;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Obx(
            () => Text("Name is ${student.value.name}"),
          ),
          const SizedBox(height: 20),
          CustomButton(
              press: () {
                // student.toUpper();
                student.update((student) {
                  student?.name = student.name.toString().toUpperCase();
                });
              },
              btnText: "To Upper")
        ],
      ),
    );
  }
}

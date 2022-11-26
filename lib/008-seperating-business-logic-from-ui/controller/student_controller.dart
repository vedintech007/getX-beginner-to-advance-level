import 'package:get/get.dart';
import 'package:mastering_getx/008-seperating-business-logic-from-ui/pages/student.dart';

class StudentController extends GetxController {
  // var student = Student();

  // void convertToUpperCase() {
  //   student.name.value = student.name.value.toUpperCase();
  // }

  var student = Student(name: "ved", age: 44).obs;

  void convertToUpperCase() {
    student.update((student) {
      student?.name = student.name.toString().toUpperCase();
    });
  }
}

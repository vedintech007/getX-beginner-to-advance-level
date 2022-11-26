// ignore_for_file: unused_import

import 'package:get/get.dart';

class Student {
  /* 
  classed can be made observable by making individual variables
  Rx or by making the entire class observable
   */

  // individual variables as reactive
  // var name = "Tom".obs;
  // var age = 25.obs;

  // void toUpper() {
  //   name.value = name.value.toUpperCase();
  // }

  // to make the entire class observable
  String? name;
  int? age;
  Student({this.name, this.age});
}

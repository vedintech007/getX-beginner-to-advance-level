import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mastering_getx/components/custom_button.dart';

class BottomSheetDynamicTheme extends StatelessWidget {
  const BottomSheetDynamicTheme({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomButton(
      btnText: "Bottom Sheet & Dynamic Theme",
      press: () {
        Get.bottomSheet(
          SizedBox(
            height: context.height / 2,
            width: context.width,
            // color: Color.fromARGB(255, 212, 177, 0),
            child: Wrap(
              children: <Widget>[
                ListTile(
                  leading: IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.wb_sunny),
                  ),
                  title: const Text("Dark Theme"),
                  onTap: () {
                    Get.changeTheme(ThemeData.dark());
                  },
                ),
                ListTile(
                  leading: IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.wb_sunny_outlined),
                  ),
                  title: const Text("Light Theme"),
                  onTap: () {
                    Get.changeTheme(ThemeData.light());
                  },
                ),
              ],
            ),
          ),
          barrierColor: Colors.grey,
          backgroundColor: const Color(0xFF3FB572),
          isDismissible: true,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
            side: const BorderSide(
              color: Colors.white,
              style: BorderStyle.solid,
              width: 2,
            ),
          ),
          enableDrag: true,
        );
      },
    );
  }
}

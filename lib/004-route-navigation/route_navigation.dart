import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mastering_getx/004-route-navigation/pages/page1.dart';
import 'package:mastering_getx/00-components/custom_button.dart';

class RouteNavigation extends StatelessWidget {
  const RouteNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomButton(
      btnText: "Route Navigation",
      press: () {
        // Get.to(
        //   () => const Page1(),
        //   /* best for notification pages */
        //   // fullscreenDialog: true,
        //   transition: Transition.zoom,
        //   // duration: const Duration(milliseconds: 4000),
        //   // curve: Curves.bounceInOut,
        // );

        /* Go to next screen and give no option to go back */
        // Get.off(() => const Page1());

        /* Go to next screen and cancel all previous routes */
        // Get.offAll(() => const Page1());

        /* Go to next screen with some data */
        Get.to(
          () => const Page1(),
          arguments: "// VED // ",
        );
      },
    );
  }
}

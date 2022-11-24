import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mastering_getx/components/custom_button.dart';

class CustomSnackBar extends StatelessWidget {
  const CustomSnackBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomButton(
      btnText: "Trigger Snackbar",
      press: () {
        Get.snackbar(
          "GetX SnackBar", "This is a Snackbar from getX",
          snackPosition: SnackPosition.BOTTOM,
          // titleText: Text("New Snackbar title"),
          // messageText: Text("New Snackbar message"),
          colorText: Colors.black,
          backgroundColor: Colors.black87,
          borderRadius: 10,
          maxWidth: 320,
          animationDuration: const Duration(milliseconds: 1000),
          backgroundGradient: const LinearGradient(
            colors: [
              Colors.redAccent,
              Colors.yellowAccent,
              Colors.greenAccent,
              Colors.black87,
            ],
          ),
          // while using the border color, make sure you are
          //using border width, else error will be generated
          borderColor: Colors.grey,
          borderWidth: 5,
          // boxShadows: [
          //   const BoxShadow(
          //     color: Colors.limeAccent,
          //     offset: Offset(5, 5),
          //     spreadRadius: 5,
          //     blurRadius: 8,
          //   ),
          // ],
          isDismissible: true,
          dismissDirection: DismissDirection.startToEnd,
          forwardAnimationCurve: Curves.bounceInOut,
          duration: const Duration(milliseconds: 4000),
          icon: const Icon(
            Icons.handshake,
            color: Colors.black87,
            size: 40,
          ),
          shouldIconPulse: true,
          // leftBarIndicatorColor: Colors.white,
          mainButton: TextButton(
            onPressed: () {
              print("Retry button pressed");
            },
            style: TextButton.styleFrom(
              backgroundColor: Colors.white,
            ),
            child: const Text("Retry"),
          ),
          onTap: (_) {
            print("Snackbar Clicked");
          },
          overlayBlur: 3,
          // overlayColor: Colors.grey,
          // padding: const EdgeInsets.all(30),
          showProgressIndicator: true,
          progressIndicatorBackgroundColor: Colors.deepOrange,
          progressIndicatorValueColor: const AlwaysStoppedAnimation<Color>(Colors.white),
          // reverseAnimationCurve: Curves.bounceOut,
          snackbarStatus: (status) {
            print(status);
          },
          // userInputForm: Form(
          //   child: Row(
          //     children: const [
          //       Expanded(
          //         child: TextField(),
          //       ),
          //     ],
          //   ),
          // ),
        );
      },
    );
  }
}

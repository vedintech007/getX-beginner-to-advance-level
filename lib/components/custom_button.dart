import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomButton extends StatelessWidget {
  CustomButton({
    Key? key,
    required this.btnText,
    required this.press,
    this.btnColor,
  }) : super(key: key);

  final String btnText;
  final Function press;
  Color? btnColor;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        press();
      },
      child: Container(
        margin: const EdgeInsets.all(10),
        width: double.maxFinite,
        height: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(7),
          color: btnColor ?? Colors.deepOrange,
        ),
        child: Center(
          child: Text(
            btnText,
            style: const TextStyle(
              fontSize: 20,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}

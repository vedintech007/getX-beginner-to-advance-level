import 'package:flutter/material.dart';
import 'package:mastering_getx/001-snackbar/custom_snackbar.dart';
import 'package:mastering_getx/002-dialog/custom_dialog.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(),
      body: SafeArea(
        child: Column(
          children: const [
            //  snackbar
            CustomSnackBar(),

            //  dialog
            CustomDialog(),
          ],
        ),
      ),
    );
  }
}

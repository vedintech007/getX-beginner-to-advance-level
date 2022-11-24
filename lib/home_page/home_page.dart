import 'package:flutter/material.dart';
import 'package:mastering_getx/001-snackbar/custom_snackbar.dart';
import 'package:mastering_getx/002-dialog/custom_dialog.dart';
import 'package:mastering_getx/003-bottom-sheet-dynamic-theme/buttom_sheet_dynamic_theme.dart';

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

            // botttom sheet & dymnamic theme
            BottomSheetDynamicTheme(),
          ],
        ),
      ),
    );
  }
}

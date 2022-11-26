import 'package:flutter/material.dart';
import 'package:mastering_getx/001-snackbar/custom_snackbar.dart';
import 'package:mastering_getx/002-dialog/custom_dialog.dart';
import 'package:mastering_getx/003-bottom-sheet-dynamic-theme/buttom_sheet_dynamic_theme.dart';
import 'package:mastering_getx/004-route-navigation/route_navigation.dart';
import 'package:mastering_getx/005-named-route-navigation/named_route_navigation.dart';
import 'package:mastering_getx/006-reactive-state-manager/reactive_state_manager.dart';
import 'package:mastering_getx/007-obx-and-custom-class/obx_and_custom_class.dart';
import 'package:mastering_getx/008-seperating-business-logic-from-ui/seperating_business_logic_from_ui.dart';
import 'package:mastering_getx/009-reactive-state-manager-using-getX-type-controller/reactive_state_manager_using_getX_type_controller.dart';
import 'package:mastering_getx/010-simple-state-manager/simple_state_manager.dart';
import 'package:mastering_getx/011-controller-life-cycle/controller_life_cycle.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(bottom: 30),
            child: Column(
              children: const [
                //  snackbar
                CustomSnackBar(),

                //  dialog
                CustomDialog(),

                // botttom sheet & dymnamic theme
                BottomSheetDynamicTheme(),

                // route navigation
                RouteNavigation(),

                // named route navigation
                NameRoutesNavigation(),

                // reactive state management
                ReactiveStateManager(),

                // exploring Obs
                ObxCustomClass(),

                // seperating business logic from ui code
                BusinessLogicFromUi(),

                // reactive state management with getX type controller
                ReactiveStateManagerWithTypeController(),

                // simple state management with Getbuilder
                SimpleStateManager(),

                // ControllerLifeCycle
                ControllerLifeCycle(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

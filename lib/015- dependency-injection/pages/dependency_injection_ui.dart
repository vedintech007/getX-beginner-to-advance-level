import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mastering_getx/00-components/custom_button.dart';
import 'package:mastering_getx/015-%20dependency-injection/controllers/dep_controllers.dart';

class DependencyInjectionUi extends StatelessWidget {
  const DependencyInjectionUi({super.key});

  @override
  Widget build(BuildContext context) {
    // My Controller instance will be created even if it is not used tag will be used to find the instance with tag name
    // Controller disposed when it is not used but if permanent is
    // true the instance will be alive throughout the app
    // DependencyInjectionController dependencyInjectionController = Get.put(
    //   DependencyInjectionController(),
    //   permanent: true,
    //   // this tag value can help you locate this easily
    //   tag: "instance1",
    // );

    // Instance will be created when it is used
    //fenix is similar to "permanent", the difference is that the instance / is discarded when is not being used,
    // but when it's use is needed again, Get will recreate the instantce
    // Get.lazyPut(
    //   () => DependencyInjectionController(),
    //   tag: "Instance2",
    //   fenix: true,
    // );

    Get.putAsync<DependencyInjectionController>(
      () async => await DependencyInjectionController(),
    );

    // when using get.create, permanent will be true by default and isSingleton by default = false
    // making it available throughout the app
    Get.create<DependencyInjectionController>(() => DependencyInjectionController());
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dependeny Injection"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CustomButton(
            btnText: "Click me",
            press: () {
              // instance will be created with tag
              // Get.find<DependencyInjectionController>(tag: "instance1");
              Get.find<DependencyInjectionController>();

              Get.find<DependencyInjectionController>().incrementCounter();
            },
          ),
        ],
      ),
    );
  }
}

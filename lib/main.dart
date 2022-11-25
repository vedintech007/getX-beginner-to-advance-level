// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mastering_getx/005-named-route-navigation/pages/named_route_page1.dart';
import 'package:mastering_getx/005-named-route-navigation/pages/named_route_page2.dart';
import 'package:mastering_getx/005-named-route-navigation/pages/unknown_route_page.dart';
import 'package:mastering_getx/home_page/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Learn GetX',
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
      ),

      // path configs when setting named route with getX
      initialRoute: "/",
      getPages: [
        GetPage(name: "/", page: () => const HomePage()),
        GetPage(name: "/namedRoutePage1", page: () => const NamedRoutePage1()),
        // GetPage(
        //   name: "/namedRoutePage2",
        //   page: () => const NamedRoutePage2(),
        //   transition: Transition.rightToLeft,
        // ),

        // when you want to be a able to pass
        //some extra dynamic parameters in urls. Eg, blog id
        GetPage(
          name: "/namedRoutePage2/:someValue",
          page: () => const NamedRoutePage2(),
          transition: Transition.rightToLeft,
        ),
      ],
      unknownRoute: GetPage(name: "/notFound", page: () => const UnknownRoute()),
      home: const HomePage(),
    );
  }
}

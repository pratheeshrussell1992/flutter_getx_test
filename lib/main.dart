import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_test/pages/home/home.bindings.dart';
import 'package:getx_test/pages/home/home.view.dart';

import 'controllers/main.controller.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      initialRoute: "/",
      initialBinding: HomePageBinding(),
      
      // initialBinding: BindingsBuilder(() => {Get.put(MainController())})
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
     // home: HomePage(title: 'Flutter Demo Home Page'),
      getPages: [
      GetPage(
        name: '/',
        page: () => HomePage(title: 'Flutter Demo Home Page'),
      )],
    );
  }
}
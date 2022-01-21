import 'package:get/get.dart';
import 'package:getx_test/controllers/main.controller.dart';

class HomePageBinding implements Bindings {
  @override
  void dependencies() {
    Get.put<MainController>(MainController());
    //………Other controllers…………
  }
}

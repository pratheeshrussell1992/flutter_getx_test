import 'package:get/get.dart';

class MainModel{
  //observables
  RxInt counter = 0.obs;
}

class MainController extends GetxController with MainModel{
  void incrementCounter() {
      counter++;
  }
}
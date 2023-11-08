import 'package:get/get.dart';

class User extends GetxController {
  var count = 0;
  void increment() {
    count++;
    update();
  }
}
import 'package:get_storage/get_storage.dart';

class ZLocalStorage {
  static final ZLocalStorage _instance = ZLocalStorage._internal();

  factory ZLocalStorage(){
    return _instance;
  }
  ZLocalStorage._internal();

  final storage = GetStorage();

  // save
  // read
  // remove
  // clear data
}
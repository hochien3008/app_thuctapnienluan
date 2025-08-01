import 'package:get/get.dart';
import 'package:get_lms_flutter/controller/theme_controller.dart';

class SettingsBinding extends Bindings{
  @override
  void dependencies() async {
    Get.lazyPut(() => ThemeController(sharedPreferences: Get.find()));
  }

}
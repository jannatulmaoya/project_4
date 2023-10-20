import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_4/storage/local_data.dart';

class MainAppPageController extends GetxController {
  RxBool isDarkTheme = false.obs;
  @override
  void onInit() {
    CheckTheme();
    super.onInit();
  }

  CheckTheme() async {
    isDarkTheme.value = await LocalData().getThemeData();
    Get.changeThemeMode(isDarkTheme.value ? ThemeMode.dark : ThemeMode.light);
  }

  changeTheme() async {
    isDarkTheme.value = !isDarkTheme.value;
    Get.changeThemeMode(isDarkTheme.value ? ThemeMode.dark : ThemeMode.light);
    await LocalData().setThemeData(isDarkTheme.value);
  }
}

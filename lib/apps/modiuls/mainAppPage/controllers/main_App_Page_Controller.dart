import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_4/storage/local_data.dart';

class MainAppPageController extends GetxController {
  RxBool Theme = false.obs;
  @override
  void onInit() {
    CheckTheme();
    super.onInit();
  }

  CheckTheme() async {
    Theme.value = await LocalData().getThemeData();
  }

  goToNextPage() async {
    await Future.delayed(Duration(seconds: 4));
    Get.offAllNamed(Routes.User_Input);
  }

  changeTheme() async {
    Theme.value = !Theme.value;
    Get.changeThemeMode(Theme.value ? ThemeMode.dark : ThemeMode.light);
    await LocalData().setThemeData(Theme.value);
  }
}

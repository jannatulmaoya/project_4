import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_4/apps/modiuls/mainAppPage/controllers/main_App_Page_Controller.dart';
import 'package:project_4/apps/routes/app_page.dart';

import '../../../../themes/dark.dart';
import '../../../../themes/light.dart';

class MainAppPageView extends GetView<MainAppPageController> {
  const MainAppPageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Controller = Get.put(MainAppPageController());
    return GetMaterialApp(
      theme: lightThemes,
      darkTheme: darkTheme,
      themeMode: Controller.Theme.value ? ThemeMode.light : ThemeMode.dark,
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
    );
  }
}

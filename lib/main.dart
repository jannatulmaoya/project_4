import 'package:flutter/material.dart';

import 'package:get_storage/get_storage.dart';

import 'apps/modiuls/mainAppPage/views/main_App_Page_View.dart';

void main() async {
  await GetStorage.init();
  runApp(MainAppPageView());
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../apps/modiuls/mainAppPage/controllers/main_App_Page_Controller.dart';

class KAppBar extends StatelessWidget implements PreferredSizeWidget {
  const KAppBar({
    super.key,
    required this.title,
  });
  final String title;
  @override
  Widget build(BuildContext context) {
    final controller = Get.put(MainAppPageController());
    return AppBar(
      title: const Text("UserInputView"),
      actions: [
        Obx(() => IconButton(
            onPressed: () {
              controller.changeTheme();
            },
            icon: controller.isDarkTheme.value
                ? Icon(Icons.dark_mode)
                : Icon(Icons.light_mode)))
      ],
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(60);
}

import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:project_4/apps/modiuls/home/views/home_view.dart';

class UserInputController extends GetxController {
  TextEditingController textEditingController = TextEditingController();
  @override
  void onClose() {
    textEditingController.dispose();
    super.onClose();
  }

  checkData() {
    if (textEditingController.text.isEmpty) {
      Get.snackbar(
        "Input field",
        "Text from field is empty ",
        duration: Duration(seconds: 1),
      );
    } else if (textEditingController.text.contains(" ")) {
      Get.snackbar("Input field", "Text from field is empty ",
          duration: Duration(seconds: 1));
    } else {
      Get.to(() => HomeView(), arguments: textEditingController.text);
    }
  }
}

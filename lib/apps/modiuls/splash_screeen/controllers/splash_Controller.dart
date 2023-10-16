import 'package:get/get.dart';

import '../../../routes/app_page.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    goToNextPage();
    super.onInit();
  }

  goToNextPage() async {
    await Future.delayed(const Duration(seconds: 4));
    Get.offAllNamed(Routes.UserInputPage);
  }
}

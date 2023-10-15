import 'package:get/get.dart';

class MainAppPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MainAppPageBinding>(() => MainAppPageBinding());
  }
}

import 'package:get/get.dart';

class UserInputBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<UserInputBinding>(() => UserInputBinding());
  }
}

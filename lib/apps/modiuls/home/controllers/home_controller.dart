import 'dart:convert';

import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import 'package:http/http.dart' as http;

class HomeController extends GetxController {
  var arData;
  @override
  void onInit() {
    isloading.value = true;
    arData = Get.arguments;
    callUserData(arData);
    super.onInit();
  }

  RxBool isloading = false.obs;

  RxString userName = "".obs;
  RxString userNameImage = "".obs;
  RxString user = "".obs;
  RxString userBio = "".obs;

  callUserData(String username) async {
    String url = "https://api.github.com/users/$username";
    var responsData = await http.get(Uri.parse(username));
    if (responsData.statusCode == 200) {
      var userData = json.decode(responsData.body);
      user.value = userData["name"] ?? "";
      userName.value = userData["company"] ?? " ";
      userNameImage.value = userData["avatar_url"] ?? "";
      userBio.value = userData["bio"] ?? "";
      callUserRepoData(username);
    } else {
      Get.back();
    }
  }

  callUserRepoData(String username) async {
    String url = "https://api.github.com/users/$username/repo";
    var responsData = await http.get(Uri.parse(username));
    if (responsData.statusCode == 200) {
      var userData = json.decode(responsData.body);
      print(userData["avater_url"]);
    }
  }
}

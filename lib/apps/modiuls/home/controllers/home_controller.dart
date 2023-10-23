import 'dart:convert';

import 'package:get/get.dart';

import 'package:http/http.dart' as http;

import '../models/repo_model.dart';

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
  RxBool isListView = false.obs;

  RxList<RepoModel> RepoList = <RepoModel>[].obs;
  changeListview() {
    isListView.value = !isListView.value;
  }

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
      for (var element in userData) {
        RepoList.add(RepoModel(
          name: element["name"].toString(),
          url: element["html_url"].toString(),
          createdAt: element["created_at"].toString(),
          updatedAt: element["updated_at"].toString(),
          pushedAt: element["pushed_at"].toString(),
        ));
      }
      RepoList.refresh();

      isloading.value = false;
    }
  }
}

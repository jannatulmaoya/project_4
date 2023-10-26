import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:http/http.dart' as http;
import 'package:project_4/apps/modiuls/mainAppPage/controllers/main_App_Page_Controller.dart';

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
    var responsData = await http.get(Uri.parse(url));
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
    var responsData = await http.get(Uri.parse(url));
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

  nameA2Z() {
    RepoList.sort(
        (a, b) => a.name.toLowerCase().compareTo(b.name.toLowerCase()));
    RepoList.refresh();
    Get.back();
  }

  nameZ2A() {
    RepoList.sort(
        (a, b) => b.name.toLowerCase().compareTo(a.name.toLowerCase()));
    RepoList.refresh();
    Get.back();
  }

  nameDataOrderbyCreate() {
    RepoList.sort(
        (a, b) => b.name.toLowerCase().compareTo(a.name.toLowerCase()));
    RepoList.refresh();
    Get.back();
  }

  nameDataOrderbypush() {
    RepoList.sort(
        (a, b) => b.name.toLowerCase().compareTo(a.name.toLowerCase()));
    RepoList.refresh();
    Get.back();
  }

  nameDataOrderbypdate() {
    RepoList.sort(
        (a, b) => b.name.toLowerCase().compareTo(a.name.toLowerCase()));
    RepoList.refresh();
    Get.back();
  }

  showSortDi() {
    final colorController = Get.put(MainAppPageController());
    Get.bottomSheet(
        Container(
          height: 350,
          padding: EdgeInsets.only(top: 40, left: 40),
          width: double.infinity,
          color: colorController.isDarkTheme.value
              ? Colors.blueAccent
              : Colors.orange,
          child: ListView(children: [
            InkWell(
              onTap: () {
                nameA2Z();
              },
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text("Name a_z"),
              ),
            ),
            InkWell(
              onTap: () {
                nameZ2A();
              },
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text("Name z_a"),
              ),
            ),
            InkWell(
              onTap: () {},
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text("Data order by create"),
              ),
            ),
            InkWell(
              onTap: () {},
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text("Data order by push"),
              ),
            ),
            InkWell(
              onTap: () {},
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text("Data order by update"),
              ),
            ),
          ]),
        ),
        enterBottomSheetDuration: Duration(seconds: 1),
        exitBottomSheetDuration: Duration(seconds: 1));
  }
}

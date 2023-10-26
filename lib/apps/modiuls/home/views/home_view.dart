import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:project_4/apps/modiuls/home/controllers/home_controller.dart';
import 'package:project_4/widgets/K_App_Bar.dart';

import '../../../../widgets/K_Grid_View.dart';
import '../../../../widgets/K_List_View.dart';
import '../../../../widgets/K_Text.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(HomeController());

    return Scaffold(
      appBar: const KAppBar(
        title: "home",
      ),
      body: Obx(() => controller.isloading.value
          ? Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(
                    width: Get.width / 5,
                    height: Get.width / 5,
                    child: const CircularProgressIndicator(),
                  ),
                  SizedBox(
                    height: Get.width / 5,
                  ),
                  ElevatedButton.icon(
                      onPressed: () {
                        Get.back();
                      },
                      icon: const Icon(Icons.cancel),
                      label: const Text("cancel"))
                ],
              ),
            )
          : Padding(
              padding: const EdgeInsets.all(20.0),
              child: SingleChildScrollView(
                child: Column(children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SizedBox(
                        height: 200,
                        width: 200,
                        child: Image(
                          fit: BoxFit.cover,
                          image: NetworkImage(
                            controller.userNameImage.value,
                          ),
                        ),
                      ),
                      Column(
                        children: [
                          KText(
                              text: controller.user.value,
                              fontWeight: FontWeight.bold,
                              fontSize: 25),
                          KText(
                            text: controller.userName.value,
                          )
                        ],
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      InkWell(
                          onTap: () {
                            controller.showSortDi();
                          },
                          child: const KText(text: "Sort")),
                      const SizedBox(width: 50),
                      const KText(text: "RepoList"),
                      const SizedBox(width: 50),
                      IconButton(
                          onPressed: () {
                            controller.changeListview();
                          },
                          icon: Icon(Icons.grid_view)),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Obx(() => controller.RepoList.isEmpty
                      ? const SizedBox()
                      : controller.isListView.value
                          ? Klistview(
                              data: controller.RepoList,
                            )
                          : KGridView(
                              data: controller.RepoList,
                            )),
                ]),
              ),
            )),
    );
  }
}

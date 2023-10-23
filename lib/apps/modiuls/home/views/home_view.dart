import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:project_4/apps/modiuls/home/controllers/home_controller.dart';
import 'package:project_4/widgets/K_App_Bar.dart';

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
                    width: Get.width / 10,
                    height: Get.width / 10,
                    child: const CircularProgressIndicator(),
                  ),
                  SizedBox(
                    height: Get.width / 10,
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
                  const Row(
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
                      const KText(text: "Sort"),
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
                  Obx(
                    () => controller.RepoList.isEmpty
                        ? const SizedBox()
                        : controller.isListView.value
                            ? Klistview()
                            : KGridCard(),
                  ),
                  // Klistview(),
                  SizedBox(
                    height: 100 * 10,
                    child: GridView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisSpacing: 30,
                          mainAxisSpacing: 30,
                          crossAxisCount: 4),
                      itemBuilder: (context, index) => KGridCard(),
                    ),
                  )
                ]),
              ),
            )),
    );
  }
}

class KGridCard extends StatelessWidget {
  const KGridCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        height: 100,
        color: Colors.pink,
        padding: EdgeInsets.symmetric(horizontal: 25),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            KText(
              text: "Repo",
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
            KText(text: "Repo")
          ],
        ),
      ),
    );
  }
}

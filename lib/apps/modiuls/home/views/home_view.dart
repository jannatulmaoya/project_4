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
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      // Image(Image.network(
                      //   "https://cdn.pixabay.com/photo/2016/01/08/11/57/butterflies-1127666_1280.jpg",
                      //   height: 100,
                      //   width: 100,
                      // )),
                      KText(
                          text: "test",
                          fontWeight: FontWeight.bold,
                          fontSize: 25),
                      KText(
                        text: "test",
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
                      const Icon(Icons.grid_view),
                    ],
                  ),
                  SizedBox(
                    height: 20,
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

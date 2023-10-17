import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_4/apps/modiuls/home/controllers/home_controller.dart';
import 'package:project_4/widgets/K_App_Bar.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(HomeController());
    return Scaffold(
        appBar: const KAppBar(
          title: "home",
        ),
        body: Center(
          child: Material(
            borderRadius: BorderRadius.circular(10),
            elevation: 20,
            child: Padding(
              padding: const EdgeInsets.all(50.0),
              child: Obx(
                () => controller.isloading.value? Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SizedBox(
                      width: Get.width / 5,
                      height: Get.width / 5,
                      child: CircularProgressIndicator(),
                    ),
                    SizedBox(
                        height: Get.width / 5,)
                    ElevatedButton.icon(
                            onPressed: () {
                              Get.back();
                            },
                            icon: Icon(Icons.cancel),
                            label: Text("cancel"))
                  ],
                ):Column(children: [Row(mainAxisAlignment: MainAxisAlignment.center,children: [KText(text: "test"
                fontWeight: FontWeight.bold,fontSize: 25),
                KText(text: "test",)],), KText(text: "Flutter Devaloper"),
                SizedBox(height: 20),
                Row(mainAxisAlignment: MainAxisAlignment.spaceAround,children: [TextButton(onPressed: () {}, child:KText(text: "Sort",)),
                SizedBox(width: 50,),KText(text: "Sort",)),
                SizedBox(width: 50,),
                ],)

                ],)
              ),
            ),
          ),
        ));
  }
}

class KText extends StatelessWidget {
  const KText({
    super.key,
    required this.text, this.fontSize,this.fontWeight=FontWeight.normal,
  });
  final String text ;
  final FontWeight fontWeight;
  final double? fontSize;

  @override
  Widget build(BuildContext context) {
    return Text("test",style: TextStyle(fontWeight:fontWeight,fontSize:fontSize),);
  }
}

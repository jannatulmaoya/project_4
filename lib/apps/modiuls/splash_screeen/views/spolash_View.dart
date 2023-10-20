import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_4/apps/modiuls/splash_screeen/controllers/splash_Controller.dart';

class SplashView extends GetView<SplashController> {
  const SplashView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(SplashController());
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 200,
              width: 200,
              child: CircularProgressIndicator(),
            ),
            SizedBox(
              height: 200,
              child: Text("Looding......"),
            )
          ],
        ),
      ),
    );
  }
}

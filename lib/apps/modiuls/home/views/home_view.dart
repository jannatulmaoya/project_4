import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_4/widgets/K_App_Bar.dart';

class HomeView extends GetView<GetxController> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: KAppBar(
          title: "home",
        ),
        body: Column());
  }
}

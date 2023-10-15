import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeView extends GetView<GetxController> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("HomeView"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: const Center(
        child: Text(
          "HomeView",
          style: TextStyle(fontSize: 25),
        ),
      ),
      backgroundColor: Color.fromARGB(255, 245, 142, 177),
    );
  }
}

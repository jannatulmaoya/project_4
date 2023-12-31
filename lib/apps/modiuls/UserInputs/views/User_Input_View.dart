import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../../widgets/K_App_Bar.dart';
import '../controllers/User_Input_Controller.dart';

class UserInputView extends GetView<UserInputController> {
  const UserInputView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var controller = Get.put(UserInputController());
    return Scaffold(
        appBar: const KAppBar(
          title: "User Input",
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextFormField(
                  controller: controller.textEditingController,
                  decoration: const InputDecoration(
                    labelText: "User name",
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue, width: 4),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue, width: 4),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue, width: 4),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.red, width: 4),
                    ),
                  ),
                ),
                ElevatedButton(
                    onPressed: () {
                      controller.checkData();
                    },
                    child: const Text("submit"))
              ],
            ),
          ),
        ));
  }
}

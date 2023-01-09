// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:getx_simple_app/controllers/valueController.dart';

class GetxObxPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("State Management GetX | Obx"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            // ignore: prefer_const_literals_to_create_immutables
            children: <Widget>[
              // Using GetX
              GetX<ValueController>(
                init: ValueController(),
                builder: (_) {
                  return Text(
                    "This is value 1: ${_.valueModel.value.value1}",
                    style: TextStyle(fontSize: 20),
                  );
                },
              ),
              SizedBox(
                height: 10,
              ),

              // Using Obx
              Obx(
                () => Text(
                  "This is value 2: ${Get.find<ValueController>().valueModel.value.value2}",
                  style: TextStyle(fontSize: 20),
                ),
              ),

              ElevatedButton(
                  onPressed: () {
                    Get.find<ValueController>().updateTheValue(
                        "Flutter Developer", "Learnt GetX State Management");
                  },
                  child: Text(
                    "Change the value",
                    style: const TextStyle(fontSize: 20, color: Colors.white),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}

// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_simple_app/pages/homepage.dart';

import '../controllers/countController.dart';

class GetBuilderPage extends StatelessWidget {
  // CountController controller = Get.put(CountController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text("Navigation | Send Data"),
      ),
      body: Center(
        child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              // ignore: prefer_const_literals_to_create_immutables
              children: <Widget>[
                GetBuilder<CountController>(
                    init: CountController(),
                    builder: (controller) {
                      return Text("Count Value is ${controller.count}");
                    }),
                const Text(
                  "This is the count value",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                ElevatedButton(
                    onPressed: () {
                      print('///btn pressed !');

                      ///controller.increament();

                      // this method is called using an object of controller
                      // but we can also call same method without creating an object like this which
                      // as mentioned below.
                      Get.find<CountController>().increament();
                    },
                    child: Text(
                      "Increment the value",
                      style: TextStyle(color: Colors.white),
                    )),
                const SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                    onPressed: () {
                      print('///btn pressed !');
                      Get.offAll(HomePage());
                    },
                    child: Text(
                      "Go to Home Page",
                      style: TextStyle(color: Colors.white),
                    ))
              ],
            )),
      ),
    );
  }
}

// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/hideValueController.dart';

class HideValueScreen extends StatelessWidget {
  final hideValueController = Get.put(HideValueController());

  @override
  Widget build(BuildContext context) {
    return Obx(() => Scaffold(
        appBar: AppBar(
          title: const Text('Hide Value Appbar'),
        ),
        body: SafeArea(
          child: Container(
            child: Column(children: <Widget>[
              Text(hideValueController.hideValue.isTrue
                  ? hideValueController.currentValue.toString()
                  : hideValueController.defaultValue.toString()),
              // Text(
              //     hideValueController.hideValue.isTrue ? "2,23,456" : "******"),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                child: Text('Hide Value'),
                onPressed: () {
                  print('pressed value');
                  hideValueController.hideValueMethod();
                },
              )
            ]),
          ),
        )));
  }
}

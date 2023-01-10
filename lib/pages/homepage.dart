// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_simple_app/pages/getxobxpage.dart';
import 'package:getx_simple_app/pages/hide_value_screen.dart';
import 'package:getx_simple_app/pages/secondpage.dart';
import 'package:getx_simple_app/pages/snackpage.dart';

import 'getBuilder.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 30.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                // SnackBar,Dialog and Bottomsheet
                InkWell(
                  onTap: () {
                    Get.to(SnackPage());
                  },
                  child: Container(
                    height: 100,
                    color: Colors.green,
                    padding: const EdgeInsets.all(8.0),
                    child: Expanded(
                        child: Center(
                            child: Text(
                      'SnackBar,Dialog and BottomSheet',
                      style: style,
                    ))),
                  ),
                ),
                // Screen Navigation.
                InkWell(
                  onTap: () {
                    Get.to(SecondPage(),
                        arguments: ['value1', 'value2', 'value3']);
                    //   Get.toNamed("/secondpage",parameters: SecondPage());
                  },
                  child: Container(
                    height: 100,
                    color: Colors.green,
                    padding: const EdgeInsets.all(8.0),
                    child: Expanded(
                        child: Center(
                            child: Text(
                      'Navigation | Send data to other screen',
                      style: style,
                    ))),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                InkWell(
                  onTap: () {
                    print('get obx');
                    Get.offAll(GetBuilderPage());
                  },
                  child: Container(
                    height: 100,
                    color: Colors.blue,
                    padding: const EdgeInsets.all(8.0),
                    child: Expanded(
                        child: Center(
                            child: Text(
                      'State Management | GetBuilder',
                      style: style,
                    ))),
                  ),
                ),
                InkWell(
                  onTap: () {
                    print('get builder');
                    Get.offAll(GetxObxPage());
                  },
                  child: Container(
                    height: 100,
                    color: Colors.pink,
                    padding: const EdgeInsets.all(8.0),
                    child: Expanded(
                        child: Center(
                            child: Text(
                      'State Management | Getx & Obx',
                      style: style,
                    ))),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 50,
            ),
            // if else statemanagement
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                InkWell(
                  onTap: () {
                    print('get obx');
                    Get.offAll(HideValueScreen());
                  },
                  child: Container(
                    height: 100,
                    color: Colors.blue,
                    padding: const EdgeInsets.all(8.0),
                    child: Expanded(
                        child: Center(
                            child: Text(
                      'State Management | GetX True False',
                      style: style,
                    ))),
                  ),
                ),
                InkWell(
                  onTap: () {
                    print('get builder');
                    //Get.offAll(GetxObxPage());
                  },
                  child: Container(
                    height: 100,
                    color: Colors.pink,
                    padding: const EdgeInsets.all(8.0),
                    child: Expanded(
                        child: Center(
                            child: Text(
                      'State Management | Getx & Obx',
                      style: style,
                    ))),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  var style = TextStyle(color: Colors.white, fontSize: 15);
}

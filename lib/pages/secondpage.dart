import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_simple_app/pages/homepage.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({super.key});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
            child: Column(
          children: [
            const Text(
              'You have Successfully Navigated to a new Screen.',
              style: TextStyle(fontSize: 20, color: Colors.blue),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.black)),
                onPressed: () {
                  //Get.to(const HomePage());
                  // this method is used to navigation but it will take existing page in stack ,
                  /// means it will not close current page.
                  /// so we'll use different method to navigate and remove current page as well.

                  //Get.off(const HomePage());
                  // // the "off" method is used to navigate and close current page.never comeback again on the same page.

                  //Get.offAll(const HomePage()); // "offAll" method is used to navigate to the page
                  //and close all the previos page which is opened in stack.
                  Get.offAll(const HomePage());
                },
                child: const Text('Go back to HomePage')),
            const SizedBox(height: 20),
            Text(
              Get.arguments.toString(),
              style: const TextStyle(fontSize: 20, color: Colors.blue),
            ),
          ],
        )),
      ),
    );
  }
}

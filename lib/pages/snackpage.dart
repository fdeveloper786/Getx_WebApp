import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SnackPage extends StatefulWidget {
  const SnackPage({super.key});

  @override
  State<SnackPage> createState() => _SnackPageState();
}

class _SnackPageState extends State<SnackPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20.0),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10),
        child: Column(
          children: [
            ElevatedButton(
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.red)),
                onPressed: () {
                  Get.snackbar("Great SnackBar", "SnackBar done in one line",
                      snackPosition: SnackPosition.BOTTOM,
                      colorText: Colors.white,
                      backgroundColor: Colors.grey[500],
                      duration: const Duration(seconds: 5));
                },
                child: const Text('Show SnackBar')),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.yellow)),
                onPressed: () {
                  Get.defaultDialog(
                    title: "Getx Dialog",
                    content: Column(children: const [
                      Text('This is amazing !'),
                      Text('This is another widget !')
                    ]),
                  );
                },
                child: const Text('Show Dialog')),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.blue)),
                onPressed: () {
                  Get.bottomSheet(Container(
                    height: 100,
                    color: Colors.white,
                    child: Column(children: const [
                      ListTile(
                        title: Text('Getx Bottom Sheet!'),
                      ),
                      ListTile(title: Text('Getx Bottom Sheet'))
                    ]),
                  ));
                },
                child: const Text('Show Bottom Sheet')),
          ],
        ),
      ),
    );
  }
}

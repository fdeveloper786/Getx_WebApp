import 'dart:html';

import 'package:get/get.dart';
import 'package:getx_simple_app/models/valueModel.dart';

class ValueController extends GetxController {
  final valueModel = ValueModel().obs;

  updateTheValue(String newValue1, String newValue2) {
    valueModel.update((model) {
      model!.value1 = newValue1;
      model!.value2 = newValue2;
    });
  }
}

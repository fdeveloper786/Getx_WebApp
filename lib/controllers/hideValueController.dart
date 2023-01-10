import 'dart:html';

import 'package:get/get.dart';

import '../models/hideValueModel.dart';

class HideValueController extends GetxController {
  RxBool hideValue = false.obs;
  RxString currentValue = "2,34,567".obs;
  RxString defaultValue = "******".obs;

  hideValueMethod() {
    hideValue(!hideValue.value);
  }
}

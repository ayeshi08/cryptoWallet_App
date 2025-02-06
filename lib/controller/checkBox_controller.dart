import 'package:get/get.dart';

class CheckboxController extends GetxController {
  // Observable boolean to manage the checkbox state
  var isChecked = true.obs;

  void toggleCheckbox(bool value) {
    isChecked.value = value;
  }
}
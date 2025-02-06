import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/checkBox_controller.dart';

class CheckBoxWidget extends StatefulWidget {
  const CheckBoxWidget({super.key});

  @override
  State<CheckBoxWidget> createState() => _CheckBoxWidgetState();
}

class _CheckBoxWidgetState extends State<CheckBoxWidget> {



  @override
  Widget build(BuildContext context) {
    return  Obx(() =>
      Checkbox(
          value:   Get.find<CheckboxController>().isChecked(),
        onChanged: (value) {
          setState(() {
            Get.find<CheckboxController>().toggleCheckbox(value!);
          });
        },
          ),
    );
  }
}

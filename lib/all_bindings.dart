import 'package:get/get.dart';

import 'controller/checkBox_controller.dart';
import 'controller/gmailSignIn_controller.dart';
import 'controller/sliderIcon_controller.dart';

class AllBindings extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => SliderIconController());
    Get.lazyPut(() => CheckboxController());
    Get.lazyPut(() => AuthController());
  }
  }
  

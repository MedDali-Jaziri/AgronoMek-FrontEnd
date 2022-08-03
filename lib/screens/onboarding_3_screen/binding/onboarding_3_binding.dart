import '../controller/onboarding_3_controller.dart';
import 'package:get/get.dart';

class Onboarding3Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => Onboarding3Controller());
  }
}

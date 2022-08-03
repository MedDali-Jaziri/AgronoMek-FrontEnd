import '../controller/homemodel2page_controller.dart';
import 'package:get/get.dart';

class Homemodel2pageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => Homemodel2pageController());
  }
}

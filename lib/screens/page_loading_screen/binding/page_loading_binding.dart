import '../controller/page_loading_controller.dart';
import 'package:get/get.dart';

class PageLoadingBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PageLoadingController());
  }
}

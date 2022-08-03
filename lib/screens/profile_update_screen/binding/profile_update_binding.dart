import 'package:agronomek_app/screens/profile_update_screen/controller/profile_update_controller.dart';
import 'package:get/get.dart';

class ProfileUpdateBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ProfileUpdateController());
  }
}


import 'package:agronomek_app/screens/profile_screen/models/profile_model.dart';

import '/core/app_export.dart';

class ProfileController extends GetxController with StateMixin<dynamic> {
  Rx<ProfileModel> profileModelObj = ProfileModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}

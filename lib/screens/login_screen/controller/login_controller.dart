import 'package:agronomek_app/screens/login_screen/models/login_model.dart';

import '/core/app_export.dart';
import 'package:flutter/material.dart';

class LoginController extends GetxController with StateMixin<dynamic> {
  TextEditingController enteryourEmaiController = TextEditingController();

  TextEditingController enteryourpasswordController = TextEditingController();

  Rx<LoginModel> loginModelObj = LoginModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    enteryourEmaiController.dispose();
    enteryourpasswordController.dispose();
  }
}

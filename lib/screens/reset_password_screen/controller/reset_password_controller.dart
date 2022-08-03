import 'package:agronomek_app/screens/reset_password_screen/models/reset_password_model.dart';

import '/core/app_export.dart';
import 'package:flutter/material.dart';

class ResetPasswordController extends GetxController with StateMixin<dynamic> {
  TextEditingController enteryouremaiController = TextEditingController();

  Rx<ResetPasswordModel> resetPasswordModelObj = ResetPasswordModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    enteryouremaiController.dispose();
  }
}

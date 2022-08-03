import 'package:agronomek_app/screens/profile_update_screen/models/profile_user_model.dart';

import '/core/app_export.dart';
import 'package:flutter/material.dart';

class ProfileUpdateController extends GetxController {
  TextEditingController userController = TextEditingController();

  TextEditingController languageController = TextEditingController();

  TextEditingController lockController = TextEditingController();

  TextEditingController lock1Controller = TextEditingController();

  Rx<ProfileUpdateModel> profileUserModelObj = ProfileUpdateModel().obs;

  final userName = "".obs;

  final emailUser = "".obs;

  final imageUser = "".obs;

  final countryUser = "".obs;

  final imageFromGalery = "".obs;

  void setUserName(var userNameNew){
    userName.value = userNameNew;
    update();
  }

  void setEmailUser(var emailUserNew){
    emailUser.value = emailUserNew;
    update();
  }

  void setImageUser(var imageUserNew){
    imageUser.value = imageUserNew;
    update();
  }

  void setCountryUser(var countryUserNew){
    countryUser.value = countryUserNew;
    update();
  }

  void setImageFromGalery(var imageFromGaleryNew){
    imageFromGalery.value = imageFromGaleryNew;
    update();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    userController.dispose();
    languageController.dispose();
    lockController.dispose();
    lock1Controller.dispose();
  }
}


import 'package:agronomek_app/core/app_export.dart';
import 'package:agronomek_app/screens/map_screen/models/map_model.dart';
import 'package:agronomek_app/screens/mobileScanner_screen/models/mobileScanner_model.dart';
import 'package:flutter/cupertino.dart';

class MobileScreenController extends GetxController with StateMixin<dynamic>{

  Rx<MobileScannerModel> mobileScannerModel = MobileScannerModel().obs;

  @override
  void onReady() {
    // TODO: implement onReady
    super.onReady();
  }

  @override
  void onClose() {
    // TODO: implement onClose
    super.onClose();
  }
}
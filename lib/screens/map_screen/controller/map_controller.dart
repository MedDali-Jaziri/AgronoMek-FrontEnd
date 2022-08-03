
import 'package:agronomek_app/core/app_export.dart';
import 'package:agronomek_app/screens/map_screen/models/map_model.dart';
import 'package:flutter/cupertino.dart';

class MapController extends GetxController with StateMixin<dynamic>{

  Rx<MapModel> map_model = MapModel().obs;

  final listOfLatAndLong = "".obs;

  void setListOfLatAndLong (var listOfLatAndLongNew){
    listOfLatAndLong.value = listOfLatAndLongNew;
    update();
  }
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
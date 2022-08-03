import 'package:agronomek_app/screens/homemodel2page_screen/models/homemodel2page_model.dart';

import '/core/app_export.dart';

class Homemodel2pageController extends GetxController {

  // var nameOfGreenHouse= "Yap".obs;
  final count = 0.obs;

  final nameOfGreenHouse = "".obs;

  final valueOfTemp = "".obs;

  final valueOfHum = "".obs;

  final imgUser = "".obs;

  Rx<Homemodel2pageModel> homemodel2pageModelObj = Homemodel2pageModel().obs;

  void setNameOfGreenHouse(var nameOfGreenHouseNew){
    nameOfGreenHouse.value = nameOfGreenHouseNew;
    update();
  }
  void setValueOfTemp(var valueOfTempNew){
    valueOfTemp.value = valueOfTempNew;
    update();
  }
  void setValueOfHum(var valueOfHumNew){
    valueOfHum.value = valueOfHumNew;
    update();
  }
  void setValueOfImgUser(var imgUserNew){
    imgUser.value = imgUserNew;
    update();
  }
  void increment(){
    count.value++;
  }
  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    this.nameOfGreenHouse.close();
    this.valueOfTemp.close();
    this.valueOfHum.close();
  }
}

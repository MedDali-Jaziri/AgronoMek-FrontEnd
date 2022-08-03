import 'package:agronomek_app/screens/page_loading_screen/models/page_loading_model.dart';

import '/core/app_export.dart';

class PageLoadingController extends GetxController with StateMixin<dynamic> {
  Rx<PageLoadingModel> pageLoadingModelObj = PageLoadingModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}

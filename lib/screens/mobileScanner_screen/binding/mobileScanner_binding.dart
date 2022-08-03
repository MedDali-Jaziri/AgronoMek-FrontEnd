import 'package:agronomek_app/core/app_export.dart';
import 'package:agronomek_app/screens/map_screen/controller/map_controller.dart';

class MobileScannerBinding extends Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(() => MapController());
  }
}
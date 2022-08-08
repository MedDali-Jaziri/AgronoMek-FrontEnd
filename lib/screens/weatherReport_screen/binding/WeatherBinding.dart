import 'package:agronomek_app/screens/weatherReport_screen/controller/WeatherReport.dart';
import 'package:get/instance_manager.dart';


class WeatherReportBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeController(city: 'Monastir'));
  }
}

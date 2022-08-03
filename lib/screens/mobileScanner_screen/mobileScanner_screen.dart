import 'package:agronomek_app/core/app_export.dart';
import 'package:agronomek_app/screens/homemodel2page_screen/homemodel2page_screen.dart';
import 'package:agronomek_app/screens/homepage_screen/homepage_screen.dart';
import 'package:agronomek_app/screens/login_screen/login_screen.dart';
import 'package:agronomek_app/screens/onboarding_1_screen/onboarding_1_screen.dart';
import 'package:agronomek_app/theme/app_style.dart';
import 'package:cool_alert/cool_alert.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:mobile_scanner/mobile_scanner.dart';

class MobileScannerScreen extends StatefulWidget {
  const MobileScannerScreen({Key? key}) : super(key: key);

  @override
  State<MobileScannerScreen> createState() => _MobileScannerScreen();
}

class _MobileScannerScreen extends State<MobileScannerScreen> {
  MobileScannerController cameraController = MobileScannerController();

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration.zero, () => alertMessage(context));
    return Scaffold(

        body: MobileScanner(
            allowDuplicates: false,
            controller: cameraController,
            onDetect: (barcode, args) {
              if (barcode.rawValue == null) {
                debugPrint('Failed to scan Barcode');
                CoolAlert.show(
                  context: context,
                  type: CoolAlertType.loading,
                  text: 'Loading QR Code',
                );
              } else {
                final String code = barcode.rawValue!;
                // print('Barcode found! $code');
                // debugPrint('Barcode found! $code');
                // Get.toNamed(AppRoutes.homeScreen);
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Homemodel2pageScreen(code, "","","")));
              }
            }));
  }
  void alertMessage(BuildContext context) {
      CoolAlert.show(
        context: context,
        type: CoolAlertType.info,
        text: "We need your hydroponic greenhouse Qr Code !!"
      );
    }
}

import 'package:agronomek_app/screens/signup_screen/models/signup_model.dart';
import 'package:google_sign_in/google_sign_in.dart';

import '/core/app_export.dart';
import 'package:flutter/material.dart';

import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';

class SignupController extends GetxController with StateMixin<dynamic> {
  
  TextEditingController enteryourEmaiController = TextEditingController();

  TextEditingController enteryouruserController = TextEditingController();

  TextEditingController enteryourPassController = TextEditingController();

  TextEditingController enteryourPassController1 = TextEditingController();

  Rx<SignupModel> signupModelObj = SignupModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    enteryourEmaiController.dispose();
    enteryouruserController.dispose();
    enteryourPassController.dispose();
    enteryourPassController1.dispose();
  }

  // Future<String?> determineCountryPosition(BuildContext context) async{
  //   Position pos = await _determinePosition();
  //       List<Placemark> newPlace =
  //           await placemarkFromCoordinates(pos.latitude, pos.longitude);
  //       Placemark placemark = newPlace[0];
  //       var country = placemark.country;
  //       print(country);
  //       print(country.runtimeType);
  //   return country;
  // }

  // Future<Position> _determinePosition() async {
  //   bool serviceEnabled;
  //   LocationPermission permission;

  //   serviceEnabled = await Geolocator.isLocationServiceEnabled();
  //   if (!serviceEnabled) {
  //     return Future.error('Location services are disabled.');
  //   }

  //   permission = await Geolocator.checkPermission();
  //   if (permission == LocationPermission.denied) {
  //     permission = await Geolocator.requestPermission();
  //     if (permission == LocationPermission.denied) {
  //       return Future.error('Location permissions are denied');
  //     }
  //   }

  //   if (permission == LocationPermission.deniedForever) {
  //     return Future.error(
  //         'Location permissions are permanently denied, we cannot request permissions.');
  //   }
  //   return await Geolocator.getCurrentPosition();
  // }
}

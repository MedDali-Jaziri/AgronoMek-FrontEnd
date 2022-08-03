import 'dart:async';

import 'package:agronomek_app/core/app_export.dart';
import 'package:agronomek_app/theme/app_style.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

import 'controller/page_loading_controller.dart';
import 'package:flutter/material.dart';

class PageLoadingScreen extends GetWidget<PageLoadingController> {
  @override
  Widget build(BuildContext context) {
    Timer(Duration(seconds: 5),
        () => Navigator.pushNamed(context, AppRoutes.boarding1Screen));
    return SafeArea(
        child: Scaffold(
            body: Container(
                width: size.width,
                child: SingleChildScrollView(
                    child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                      Align(
                          alignment: Alignment.centerLeft,
                          child: GestureDetector(
                              child: Container(
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                      color: ColorConstant.whiteA700),
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Padding(
                                            padding: EdgeInsets.only(
                                                left: getHorizontalSize(10.00),
                                                top: getVerticalSize(256.00),
                                                right:
                                                    getHorizontalSize(10.00)),
                                            child: Image.asset(
                                                ImageConstant
                                                    .imgAgrinomeikremo3,
                                                height: getVerticalSize(106.00),
                                                width:
                                                    getHorizontalSize(132.00),
                                                fit: BoxFit.fill)),
                                        Padding(
                                            padding: EdgeInsets.only(
                                                left: getHorizontalSize(10.00),
                                                right: getHorizontalSize(10.00),
                                                bottom: getVerticalSize(20.00)),
                                            child: Text("AgronoMek",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.center,
                                                style: AppStyle
                                                    .textstyleamaranthbold35
                                                    .copyWith(
                                                        fontSize:
                                                            getFontSize(35)))),
                                        Container(
                                          padding: EdgeInsets.only(
                                              left: getHorizontalSize(
                                                10.00,
                                              ),
                                              top: getVerticalSize(
                                                150.00,
                                              ),
                                              right: getHorizontalSize(
                                                10.00,
                                              )),
                                          child: Center(
                                            child: SpinKitWanderingCubes(
                                              color:
                                                  ColorConstant.lightGreenA700,
                                              size: 100.0,
                                            ),
                                          ),
                                        )
                                      ]))))
                    ])))));
  }
}

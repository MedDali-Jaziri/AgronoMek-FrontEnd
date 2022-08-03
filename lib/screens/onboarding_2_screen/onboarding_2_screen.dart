import 'package:agronomek_app/core/app_export.dart';
import 'package:agronomek_app/theme/app_style.dart';

import 'controller/onboarding_2_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Onboarding2Screen extends GetWidget<Onboarding2Controller> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: Container(
                width: size.width,
                child: SingleChildScrollView(
                    child: Container(
                        decoration:
                            BoxDecoration(color: ColorConstant.whiteA700),
                        child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: GestureDetector(
                                      onTap: () {
                                        onTapImgClose();
                                      },
                                      child: Padding(
                                          padding: EdgeInsets.only(
                                              left: getHorizontalSize(23.00),
                                              top: getVerticalSize(40.00),
                                              right: getHorizontalSize(23.00)),
                                          child: Image.asset(
                                              ImageConstant.imgClose1,
                                              height: getSize(24.00),
                                              width: getSize(24.00),
                                              fit: BoxFit.fill)))),
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Container(
                                      height: getVerticalSize(277.14),
                                      width: getHorizontalSize(286.00),
                                      margin: EdgeInsets.only(
                                          left: getHorizontalSize(29.00),
                                          top: getVerticalSize(62.00),
                                          right: getHorizontalSize(29.00)),
                                      child: Stack(
                                          alignment: Alignment.topLeft,
                                          children: [
                                            Align(
                                                alignment:
                                                    Alignment.bottomRight,
                                                child: Padding(
                                                    padding: EdgeInsets.only(
                                                        left: getHorizontalSize(
                                                            10.00),
                                                        top: getVerticalSize(
                                                            10.00)),
                                                    child: Container(
                                                        height: getVerticalSize(
                                                            255.14),
                                                        width:
                                                            getHorizontalSize(
                                                                255.00),
                                                        child: SvgPicture.asset(
                                                            ImageConstant
                                                                .imgGroup12,
                                                            fit:
                                                                BoxFit.fill)))),
                                            Align(
                                                alignment: Alignment.topLeft,
                                                child: Padding(
                                                    padding: EdgeInsets.only(
                                                        left: getHorizontalSize(
                                                            53.00),
                                                        top: getVerticalSize(
                                                            17.00),
                                                        right:
                                                            getHorizontalSize(
                                                                53.00),
                                                        bottom: getVerticalSize(
                                                            17.00)),
                                                    child: Text("WELOK",
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .textstyleamaranthbold10
                                                            .copyWith(
                                                                fontSize:
                                                                    getFontSize(
                                                                        10))))),
                                            Align(
                                                alignment: Alignment.topLeft,
                                                child: Padding(
                                                    padding: EdgeInsets.only(
                                                        left: getHorizontalSize(
                                                            8.00),
                                                        top: getVerticalSize(
                                                            31.00),
                                                        right:
                                                            getHorizontalSize(
                                                                10.00),
                                                        bottom: getVerticalSize(
                                                            31.00)),
                                                    child: Container(
                                                        height: getVerticalSize(
                                                            38.68),
                                                        width:
                                                            getHorizontalSize(
                                                                33.00),
                                                        child: SvgPicture.asset(
                                                            ImageConstant
                                                                .imgGroup13,
                                                            fit:
                                                                BoxFit.fill)))),
                                            Align(
                                                alignment:
                                                    Alignment.bottomRight,
                                                child: Padding(
                                                    padding: EdgeInsets.only(
                                                        left: getHorizontalSize(
                                                            10.00),
                                                        top: getVerticalSize(
                                                            10.00)),
                                                    child: Container(
                                                        height: getVerticalSize(
                                                            255.14),
                                                        width:
                                                            getHorizontalSize(
                                                                255.00),
                                                        child: SvgPicture.asset(
                                                            ImageConstant
                                                                .imgGroup14,
                                                            fit:
                                                                BoxFit.fill)))),
                                            Align(
                                                alignment: Alignment.topLeft,
                                                child: Container(
                                                    margin: EdgeInsets.only(
                                                        right:
                                                            getHorizontalSize(
                                                                10.00),
                                                        bottom: getVerticalSize(
                                                            10.00)),
                                                    decoration: BoxDecoration(
                                                        color: ColorConstant
                                                            .tealA4007f,
                                                        borderRadius:
                                                            BorderRadius.circular(
                                                                getHorizontalSize(
                                                                    4.00))),
                                                    child: Row(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .end,
                                                        mainAxisSize:
                                                            MainAxisSize.min,
                                                        children: [
                                                          Padding(
                                                              padding: EdgeInsets.only(
                                                                  left:
                                                                      getHorizontalSize(
                                                                          8.00),
                                                                  top: getVerticalSize(
                                                                      31.00),
                                                                  bottom:
                                                                      getVerticalSize(
                                                                          13.32)),
                                                              child: Container(
                                                                  height:
                                                                      getVerticalSize(
                                                                          38.68),
                                                                  width:
                                                                      getHorizontalSize(
                                                                          33.00),
                                                                  child: SvgPicture.asset(
                                                                      ImageConstant
                                                                          .imgGroup15,
                                                                      fit: BoxFit
                                                                          .fill))),
                                                          Padding(
                                                              padding: EdgeInsets.only(
                                                                  left:
                                                                      getHorizontalSize(
                                                                          12.00),
                                                                  top: getVerticalSize(
                                                                      17.00),
                                                                  right:
                                                                      getHorizontalSize(
                                                                          9.00),
                                                                  bottom:
                                                                      getVerticalSize(
                                                                          13.00)),
                                                              child: Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .min,
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .start,
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .start,
                                                                  children: [
                                                                    Padding(
                                                                        padding: EdgeInsets.only(
                                                                            right: getHorizontalSize(
                                                                                4.00)),
                                                                        child: Text(
                                                                            "AgronoMek",
                                                                            overflow:
                                                                                TextOverflow.ellipsis,
                                                                            textAlign: TextAlign.left,
                                                                            style: AppStyle.textstyleamaranthbold10.copyWith(fontSize: getFontSize(10)))),
                                                                    Container(
                                                                        width: getHorizontalSize(
                                                                            54.00),
                                                                        margin: EdgeInsets.only(
                                                                            top: getVerticalSize(
                                                                                9.00)),
                                                                        child: Row(
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.spaceBetween,
                                                                            crossAxisAlignment: CrossAxisAlignment.center,
                                                                            mainAxisSize: MainAxisSize.max,
                                                                            children: [
                                                                              Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.start, children: [
                                                                                Container(height: getVerticalSize(1.00), width: getHorizontalSize(30.00), margin: EdgeInsets.only(right: getHorizontalSize(8.00)), decoration: BoxDecoration(color: ColorConstant.whiteA701, borderRadius: BorderRadius.circular(getHorizontalSize(0.50)))),
                                                                                Container(height: getVerticalSize(1.00), width: getHorizontalSize(38.00), margin: EdgeInsets.only(top: getVerticalSize(5.00)), decoration: BoxDecoration(color: ColorConstant.whiteA701, borderRadius: BorderRadius.circular(getHorizontalSize(0.50)))),
                                                                                Container(height: getVerticalSize(1.00), width: getHorizontalSize(30.00), margin: EdgeInsets.only(top: getVerticalSize(5.00), right: getHorizontalSize(8.00)), decoration: BoxDecoration(color: ColorConstant.whiteA701, borderRadius: BorderRadius.circular(getHorizontalSize(0.50)))),
                                                                                Container(height: getVerticalSize(1.00), width: getHorizontalSize(38.00), margin: EdgeInsets.only(top: getVerticalSize(5.00)), decoration: BoxDecoration(color: ColorConstant.whiteA701, borderRadius: BorderRadius.circular(getHorizontalSize(0.50)))),
                                                                                Container(height: getVerticalSize(1.00), width: getHorizontalSize(30.00), margin: EdgeInsets.only(top: getVerticalSize(5.00), right: getHorizontalSize(8.00)), decoration: BoxDecoration(color: ColorConstant.whiteA701, borderRadius: BorderRadius.circular(getHorizontalSize(0.50)))),
                                                                                Container(height: getVerticalSize(1.00), width: getHorizontalSize(38.00), margin: EdgeInsets.only(top: getVerticalSize(5.00)), decoration: BoxDecoration(color: ColorConstant.whiteA701, borderRadius: BorderRadius.circular(getHorizontalSize(0.50))))
                                                                              ]),
                                                                              Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.start, children: [
                                                                                Container(height: getSize(7.00), width: getSize(7.00), decoration: BoxDecoration(borderRadius: BorderRadius.circular(getHorizontalSize(1.00)), border: Border.all(color: ColorConstant.whiteA701, width: getHorizontalSize(1.00)))),
                                                                                Container(height: getSize(7.00), width: getSize(7.00), margin: EdgeInsets.only(top: getVerticalSize(5.00)), decoration: BoxDecoration(borderRadius: BorderRadius.circular(getHorizontalSize(1.00)), border: Border.all(color: ColorConstant.whiteA701, width: getHorizontalSize(1.00)))),
                                                                                Container(height: getSize(7.00), width: getSize(7.00), margin: EdgeInsets.only(top: getVerticalSize(5.00)), decoration: BoxDecoration(borderRadius: BorderRadius.circular(getHorizontalSize(1.00)), border: Border.all(color: ColorConstant.whiteA701, width: getHorizontalSize(1.00))))
                                                                              ])
                                                                            ]))
                                                                  ]))
                                                        ])))
                                          ]))),
                              Align(
                                  alignment: Alignment.center,
                                  child: Container(
                                      height: getVerticalSize(24.00),
                                      width: getHorizontalSize(220.00),
                                      margin: EdgeInsets.only(
                                          left: getHorizontalSize(23.00),
                                          top: getVerticalSize(62.86),
                                          right: getHorizontalSize(23.00)),
                                      child: Stack(
                                          alignment: Alignment.centerLeft,
                                          children: [
                                            Align(
                                                alignment: Alignment.centerLeft,
                                                child: Text(
                                                    "Learn Many Plants Species",
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.center,
                                                    style: AppStyle
                                                        .textstyleamaranthbold19
                                                        .copyWith(
                                                            fontSize:
                                                                getFontSize(
                                                                    19)))),
                                            Align(
                                                alignment: Alignment.centerLeft,
                                                child: Text(
                                                    "Learn Many Plants Species",
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.center,
                                                    style: AppStyle
                                                        .textstyleamaranthbold19
                                                        .copyWith(
                                                            fontSize:
                                                                getFontSize(
                                                                    19))))
                                          ]))),
                              Align(
                                  alignment: Alignment.center,
                                  child: Container(
                                      height: getVerticalSize(32.00),
                                      width: getHorizontalSize(252.00),
                                      margin: EdgeInsets.only(
                                          left: getHorizontalSize(23.00),
                                          top: getVerticalSize(22.00),
                                          right: getHorizontalSize(23.00)),
                                      child: Stack(
                                          alignment: Alignment.centerLeft,
                                          children: [
                                            Align(
                                                alignment: Alignment.centerLeft,
                                                child: Container(
                                                    width: getHorizontalSize(
                                                        252.00),
                                                    child: Text(
                                                        "Let's learn about the many plant species that \nexist in this world",
                                                        maxLines: null,
                                                        textAlign:
                                                            TextAlign.center,
                                                        style: AppStyle
                                                            .textstyleamaranthregular13
                                                            .copyWith(
                                                                fontSize:
                                                                    getFontSize(
                                                                        13))))),
                                            Align(
                                                alignment: Alignment.centerLeft,
                                                child: Container(
                                                    width: getHorizontalSize(
                                                        252.00),
                                                    child: Text(
                                                        "Let's learn about the many plant species that \nexist in this world",
                                                        maxLines: null,
                                                        textAlign:
                                                            TextAlign.center,
                                                        style: AppStyle
                                                            .textstyleamaranthregular13
                                                            .copyWith(
                                                                fontSize:
                                                                    getFontSize(
                                                                        13)))))
                                          ]))),
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                      padding: EdgeInsets.only(
                                          top: getVerticalSize(55.00)),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Container(
                                                decoration: BoxDecoration(
                                                    color:
                                                        ColorConstant.gray300,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            getHorizontalSize(
                                                                3.50))),
                                                child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      Align(
                                                          alignment: Alignment
                                                              .centerLeft,
                                                          child: Container(
                                                              height:
                                                                  getSize(7.00),
                                                              width:
                                                                  getSize(7.00),
                                                              decoration: BoxDecoration(
                                                                  color: ColorConstant
                                                                      .gray300,
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              getHorizontalSize(3.50)))))
                                                    ])),
                                            Container(
                                                margin: EdgeInsets.only(
                                                    left: getHorizontalSize(
                                                        9.00)),
                                                decoration: BoxDecoration(
                                                    color:
                                                        ColorConstant.tealA400,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            getHorizontalSize(
                                                                3.50))),
                                                child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      Align(
                                                          alignment: Alignment
                                                              .centerLeft,
                                                          child: Container(
                                                              height:
                                                                  getSize(7.00),
                                                              width:
                                                                  getSize(7.00),
                                                              decoration: BoxDecoration(
                                                                  color: ColorConstant
                                                                      .tealA400,
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              getHorizontalSize(3.50)))))
                                                    ])),
                                            Container(
                                                margin: EdgeInsets.only(
                                                    left: getHorizontalSize(
                                                        9.00)),
                                                decoration: BoxDecoration(
                                                    color:
                                                        ColorConstant.gray300,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            getHorizontalSize(
                                                                3.50))),
                                                child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      Align(
                                                          alignment: Alignment
                                                              .centerLeft,
                                                          child: Container(
                                                              height:
                                                                  getSize(7.00),
                                                              width:
                                                                  getSize(7.00),
                                                              decoration: BoxDecoration(
                                                                  color: ColorConstant
                                                                      .gray300,
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              getHorizontalSize(3.50)))))
                                                    ]))
                                          ]))),
                              Align(
                                  alignment: Alignment.center,
                                  child: Container(
                                      height: getVerticalSize(50.00),
                                      width: getHorizontalSize(329.00),
                                      margin: EdgeInsets.only(
                                          left: getHorizontalSize(23.00),
                                          top: getVerticalSize(54.00),
                                          right: getHorizontalSize(23.00),
                                          bottom: getVerticalSize(20.00)),
                                      child: Stack(
                                          alignment: Alignment.centerLeft,
                                          children: [
                                            Align(
                                                alignment: Alignment.center,
                                                child: Padding(
                                                    padding: EdgeInsets.only(
                                                        left: getHorizontalSize(
                                                            40.00),
                                                        top: getVerticalSize(
                                                            16.00),
                                                        right:
                                                            getHorizontalSize(
                                                                40.00),
                                                        bottom: getVerticalSize(
                                                            15.00)),
                                                    child: Text("NEXT",
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .textstyleamaranthbold15
                                                            .copyWith(
                                                                fontSize:
                                                                    getFontSize(
                                                                        15))))),
                                            Align(
                                                alignment: Alignment.centerLeft,
                                                child: GestureDetector(
                                                    onTap: () {
                                                      onTapBtnNext();
                                                    },
                                                    child: Container(
                                                        alignment:
                                                            Alignment.center,
                                                        height: getVerticalSize(
                                                            50.00),
                                                        width: size.width,
                                                        decoration: AppDecoration
                                                            .textstyleamaranthbold151,
                                                        child: Text(
                                                            "NEXT",
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .textstyleamaranthbold151
                                                                .copyWith(
                                                                    fontSize:
                                                                        getFontSize(
                                                                            15))))))
                                          ])))
                            ]))))));
  }

  onTapImgClose() {
  // TODO: implement Actions
  Get.toNamed(AppRoutes.boarding1Screen);
  }
  onTapBtnNext() {
    // TODO: implement Actions
    Get.toNamed(AppRoutes.boarding3Screen);
  }
}

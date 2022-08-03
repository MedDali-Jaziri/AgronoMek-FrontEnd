import 'package:agronomek_app/core/app_export.dart';
import 'package:agronomek_app/theme/app_style.dart';

import 'controller/onboarding_1_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Onboarding1Screen extends GetWidget<Onboarding1Controller> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        body: Container(
          width: size.width,
          child: SingleChildScrollView(
            child: Container(
              margin: EdgeInsets.only(),
              decoration: BoxDecoration(
                color: ColorConstant.whiteA700,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    height: getVerticalSize(
                      255.14,
                    ),
                    width: getHorizontalSize(
                      255.00,
                    ),
                    margin: EdgeInsets.only(
                      left: getHorizontalSize(
                        10.00,
                      ),
                      top: getVerticalSize(
                        123.00,
                      ),
                      right: getHorizontalSize(
                        10.00,
                      ),
                    ),
                    child: Stack(
                      alignment: Alignment.bottomLeft,
                      children: [
                        Align(
                          alignment: Alignment.bottomLeft,
                          child: Padding(
                            padding: EdgeInsets.only(
                              top: getVerticalSize(
                                10.00,
                              ),
                            ),
                            child: Container(
                              height: getVerticalSize(
                                169.14,
                              ),
                              width: getHorizontalSize(
                                255.00,
                              ),
                              child: SvgPicture.asset(
                                ImageConstant.imgEllipse3,
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomLeft,
                          child: Container(
                            height: getVerticalSize(
                              242.00,
                            ),
                            width: getHorizontalSize(
                              255.00,
                            ),
                            margin: EdgeInsets.only(
                              top: getVerticalSize(
                                10.00,
                              ),
                              bottom: getVerticalSize(
                                0.14,
                              ),
                            ),
                            child: Stack(
                              alignment: Alignment.centerLeft,
                              children: [
                                Align(
                                  alignment: Alignment.bottomRight,
                                  child: Padding(
                                    padding: EdgeInsets.only(
                                      left: getHorizontalSize(
                                        10.00,
                                      ),
                                      top: getVerticalSize(
                                        13.94,
                                      ),
                                      bottom: getVerticalSize(
                                        13.94,
                                      ),
                                    ),
                                    child: Container(
                                      height: getVerticalSize(
                                        141.06,
                                      ),
                                      width: getHorizontalSize(
                                        81.00,
                                      ),
                                      child: SvgPicture.asset(
                                        ImageConstant.imgGroup6,
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Container(
                                    height: getVerticalSize(
                                      242.00,
                                    ),
                                    width: getHorizontalSize(
                                      204.96,
                                    ),
                                    margin: EdgeInsets.only(
                                      right: getHorizontalSize(
                                        10.00,
                                      ),
                                    ),
                                    child: Stack(
                                      alignment: Alignment.topRight,
                                      children: [
                                        Align(
                                          alignment: Alignment.topRight,
                                          child: Container(
                                            height: getVerticalSize(
                                              114.00,
                                            ),
                                            width: getHorizontalSize(
                                              97.00,
                                            ),
                                            margin: EdgeInsets.only(
                                              left: getHorizontalSize(
                                                10.00,
                                              ),
                                              top: getVerticalSize(
                                                47.02,
                                              ),
                                              bottom: getVerticalSize(
                                                47.02,
                                              ),
                                            ),
                                            child: Stack(
                                              alignment: Alignment.centerLeft,
                                              children: [
                                                Align(
                                                  alignment:
                                                      Alignment.centerRight,
                                                  child: Padding(
                                                    padding: EdgeInsets.only(
                                                      left: getHorizontalSize(
                                                        21.72,
                                                      ),
                                                      top: getVerticalSize(
                                                        24.62,
                                                      ),
                                                      right: getHorizontalSize(
                                                        21.72,
                                                      ),
                                                      bottom: getVerticalSize(
                                                        24.62,
                                                      ),
                                                    ),
                                                    child: Container(
                                                      height: getVerticalSize(
                                                        61.83,
                                                      ),
                                                      width: getHorizontalSize(
                                                        44.75,
                                                      ),
                                                      child: SvgPicture.asset(
                                                        ImageConstant
                                                            .imgVector30,
                                                        fit: BoxFit.fill,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Align(
                                                  alignment:
                                                      Alignment.centerLeft,
                                                  child: Container(
                                                    height: getVerticalSize(
                                                      114.00,
                                                    ),
                                                    width: getHorizontalSize(
                                                      97.00,
                                                    ),
                                                    child: Stack(
                                                      alignment:
                                                          Alignment.centerRight,
                                                      children: [
                                                        Align(
                                                          alignment: Alignment
                                                              .centerLeft,
                                                          child: ClipRRect(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                              getHorizontalSize(
                                                                127.50,
                                                              ),
                                                            ),
                                                            child: Image.asset(
                                                              ImageConstant
                                                                  .imgRectangle,
                                                              height:
                                                                  getVerticalSize(
                                                                114.00,
                                                              ),
                                                              width:
                                                                  getHorizontalSize(
                                                                97.00,
                                                              ),
                                                              fit: BoxFit.fill,
                                                            ),
                                                          ),
                                                        ),
                                                        Align(
                                                          alignment: Alignment
                                                              .centerRight,
                                                          child: Container(
                                                            height:
                                                                getVerticalSize(
                                                              58.40,
                                                            ),
                                                            width:
                                                                getHorizontalSize(
                                                              41.75,
                                                            ),
                                                            margin:
                                                                EdgeInsets.only(
                                                              left:
                                                                  getHorizontalSize(
                                                                23.46,
                                                              ),
                                                              top:
                                                                  getVerticalSize(
                                                                25.82,
                                                              ),
                                                              right:
                                                                  getHorizontalSize(
                                                                23.46,
                                                              ),
                                                              bottom:
                                                                  getVerticalSize(
                                                                25.82,
                                                              ),
                                                            ),
                                                            child: Stack(
                                                              alignment:
                                                                  Alignment
                                                                      .topRight,
                                                              children: [
                                                                Align(
                                                                  alignment:
                                                                      Alignment
                                                                          .centerLeft,
                                                                  child:
                                                                      Container(
                                                                    height:
                                                                        getVerticalSize(
                                                                      58.40,
                                                                    ),
                                                                    width:
                                                                        getHorizontalSize(
                                                                      41.75,
                                                                    ),
                                                                    child: SvgPicture
                                                                        .asset(
                                                                      ImageConstant
                                                                          .imgVector33,
                                                                      fit: BoxFit
                                                                          .fill,
                                                                    ),
                                                                  ),
                                                                ),
                                                                Align(
                                                                  alignment:
                                                                      Alignment
                                                                          .topRight,
                                                                  child:
                                                                      Padding(
                                                                    padding:
                                                                        EdgeInsets
                                                                            .only(
                                                                      left:
                                                                          getHorizontalSize(
                                                                        10.00,
                                                                      ),
                                                                      top:
                                                                          getVerticalSize(
                                                                        2.17,
                                                                      ),
                                                                      right:
                                                                          getHorizontalSize(
                                                                        0.76,
                                                                      ),
                                                                      bottom:
                                                                          getVerticalSize(
                                                                        10.00,
                                                                      ),
                                                                    ),
                                                                    child: Row(
                                                                      crossAxisAlignment:
                                                                          CrossAxisAlignment
                                                                              .start,
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .min,
                                                                      children: [
                                                                        Padding(
                                                                          padding:
                                                                              EdgeInsets.only(
                                                                            bottom:
                                                                                getVerticalSize(
                                                                              20.03,
                                                                            ),
                                                                          ),
                                                                          child:
                                                                              Container(
                                                                            height:
                                                                                getVerticalSize(
                                                                              1.73,
                                                                            ),
                                                                            width:
                                                                                getHorizontalSize(
                                                                              4.05,
                                                                            ),
                                                                            child:
                                                                                SvgPicture.asset(
                                                                              ImageConstant.imgVector34,
                                                                              fit: BoxFit.fill,
                                                                            ),
                                                                          ),
                                                                        ),
                                                                        Padding(
                                                                          padding:
                                                                              EdgeInsets.only(
                                                                            left:
                                                                                getHorizontalSize(
                                                                              0.55,
                                                                            ),
                                                                            top:
                                                                                getVerticalSize(
                                                                              1.20,
                                                                            ),
                                                                            bottom:
                                                                                getVerticalSize(
                                                                              19.71,
                                                                            ),
                                                                          ),
                                                                          child:
                                                                              Container(
                                                                            height:
                                                                                getVerticalSize(
                                                                              0.85,
                                                                            ),
                                                                            width:
                                                                                getHorizontalSize(
                                                                              0.96,
                                                                            ),
                                                                            child:
                                                                                SvgPicture.asset(
                                                                              ImageConstant.imgVector35,
                                                                              fit: BoxFit.fill,
                                                                            ),
                                                                          ),
                                                                        ),
                                                                        Padding(
                                                                          padding:
                                                                              EdgeInsets.only(
                                                                            left:
                                                                                getHorizontalSize(
                                                                              5.27,
                                                                            ),
                                                                            top:
                                                                                getVerticalSize(
                                                                              14.83,
                                                                            ),
                                                                          ),
                                                                          child:
                                                                              Container(
                                                                            height:
                                                                                getVerticalSize(
                                                                              6.93,
                                                                            ),
                                                                            width:
                                                                                getHorizontalSize(
                                                                              2.74,
                                                                            ),
                                                                            child:
                                                                                SvgPicture.asset(
                                                                              ImageConstant.imgVector36,
                                                                              fit: BoxFit.fill,
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        Align(
                                          alignment: Alignment.topRight,
                                          child: Padding(
                                            padding: EdgeInsets.only(
                                              left: getHorizontalSize(
                                                23.57,
                                              ),
                                              top: getVerticalSize(
                                                14.46,
                                              ),
                                              right: getHorizontalSize(
                                                23.57,
                                              ),
                                              bottom: getVerticalSize(
                                                14.46,
                                              ),
                                            ),
                                            child: Container(
                                              height: getVerticalSize(
                                                134.11,
                                              ),
                                              width: getHorizontalSize(
                                                100.75,
                                              ),
                                              child: SvgPicture.asset(
                                                ImageConstant.imgGroup7,
                                                fit: BoxFit.fill,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Align(
                                          alignment: Alignment.centerLeft,
                                          child: Container(
                                            height: getVerticalSize(
                                              242.00,
                                            ),
                                            width: getHorizontalSize(
                                              178.00,
                                            ),
                                            margin: EdgeInsets.only(
                                              right: getHorizontalSize(
                                                10.00,
                                              ),
                                            ),
                                            child: Stack(
                                              alignment: Alignment.topRight,
                                              children: [
                                                Align(
                                                  alignment:
                                                      Alignment.centerLeft,
                                                  child: Image.asset(
                                                    ImageConstant.imgGroup8,
                                                    height: getVerticalSize(
                                                      242.00,
                                                    ),
                                                    width: getHorizontalSize(
                                                      178.00,
                                                    ),
                                                    fit: BoxFit.fill,
                                                  ),
                                                ),
                                                Align(
                                                  alignment: Alignment.topRight,
                                                  child: Padding(
                                                    padding: EdgeInsets.only(
                                                      left: getHorizontalSize(
                                                        15.80,
                                                      ),
                                                      top: getVerticalSize(
                                                        28.30,
                                                      ),
                                                      right: getHorizontalSize(
                                                        15.80,
                                                      ),
                                                      bottom: getVerticalSize(
                                                        28.30,
                                                      ),
                                                    ),
                                                    child: Row(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Column(
                                                          mainAxisSize:
                                                              MainAxisSize.min,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Align(
                                                              alignment: Alignment
                                                                  .centerRight,
                                                              child: Padding(
                                                                padding:
                                                                    EdgeInsets
                                                                        .only(
                                                                  left:
                                                                      getHorizontalSize(
                                                                    54.69,
                                                                  ),
                                                                  right:
                                                                      getHorizontalSize(
                                                                    9.70,
                                                                  ),
                                                                ),
                                                                child:
                                                                    Container(
                                                                  height:
                                                                      getVerticalSize(
                                                                    11.40,
                                                                  ),
                                                                  width:
                                                                      getHorizontalSize(
                                                                    14.30,
                                                                  ),
                                                                  child:
                                                                      SvgPicture
                                                                          .asset(
                                                                    ImageConstant
                                                                        .imgVector37,
                                                                    fit: BoxFit
                                                                        .fill,
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                            Align(
                                                              alignment: Alignment
                                                                  .centerLeft,
                                                              child: Padding(
                                                                padding:
                                                                    EdgeInsets
                                                                        .only(
                                                                  left:
                                                                      getHorizontalSize(
                                                                    20.79,
                                                                  ),
                                                                  top:
                                                                      getVerticalSize(
                                                                    15.30,
                                                                  ),
                                                                  right:
                                                                      getHorizontalSize(
                                                                    20.79,
                                                                  ),
                                                                ),
                                                                child:
                                                                    ClipRRect(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                    getHorizontalSize(
                                                                      1.50,
                                                                    ),
                                                                  ),
                                                                  child:
                                                                      Container(
                                                                    height:
                                                                        getVerticalSize(
                                                                      3.00,
                                                                    ),
                                                                    width:
                                                                        getHorizontalSize(
                                                                      9.00,
                                                                    ),
                                                                    child: SvgPicture
                                                                        .asset(
                                                                      ImageConstant
                                                                          .imgVector43,
                                                                      fit: BoxFit
                                                                          .fill,
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                            Align(
                                                              alignment: Alignment
                                                                  .centerLeft,
                                                              child: Container(
                                                                height: getSize(
                                                                  3.00,
                                                                ),
                                                                width: getSize(
                                                                  3.00,
                                                                ),
                                                                margin:
                                                                    EdgeInsets
                                                                        .only(
                                                                  left:
                                                                      getHorizontalSize(
                                                                    27.79,
                                                                  ),
                                                                  top:
                                                                      getVerticalSize(
                                                                    3.00,
                                                                  ),
                                                                  right:
                                                                      getHorizontalSize(
                                                                    27.79,
                                                                  ),
                                                                ),
                                                                decoration:
                                                                    BoxDecoration(
                                                                  color: ColorConstant
                                                                      .black900,
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                    getHorizontalSize(
                                                                      1.50,
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                            Align(
                                                              alignment: Alignment
                                                                  .centerLeft,
                                                              child: Padding(
                                                                padding:
                                                                    EdgeInsets
                                                                        .only(
                                                                  left:
                                                                      getHorizontalSize(
                                                                    4.61,
                                                                  ),
                                                                  top:
                                                                      getVerticalSize(
                                                                    2.26,
                                                                  ),
                                                                  right:
                                                                      getHorizontalSize(
                                                                    10.00,
                                                                  ),
                                                                ),
                                                                child:
                                                                    Container(
                                                                  height:
                                                                      getVerticalSize(
                                                                    7.45,
                                                                  ),
                                                                  width:
                                                                      getHorizontalSize(
                                                                    8.42,
                                                                  ),
                                                                  child:
                                                                      SvgPicture
                                                                          .asset(
                                                                    ImageConstant
                                                                        .imgVector38,
                                                                    fit: BoxFit
                                                                        .fill,
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                            Align(
                                                              alignment: Alignment
                                                                  .centerLeft,
                                                              child: Padding(
                                                                padding:
                                                                    EdgeInsets
                                                                        .only(
                                                                  top:
                                                                      getVerticalSize(
                                                                    0.78,
                                                                  ),
                                                                  right:
                                                                      getHorizontalSize(
                                                                    10.00,
                                                                  ),
                                                                ),
                                                                child:
                                                                    Container(
                                                                  height:
                                                                      getVerticalSize(
                                                                    7.82,
                                                                  ),
                                                                  width:
                                                                      getHorizontalSize(
                                                                    12.03,
                                                                  ),
                                                                  child:
                                                                      SvgPicture
                                                                          .asset(
                                                                    ImageConstant
                                                                        .imgVector210,
                                                                    fit: BoxFit
                                                                        .fill,
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                            Align(
                                                              alignment: Alignment
                                                                  .centerRight,
                                                              child: Container(
                                                                height:
                                                                    getVerticalSize(
                                                                  25.88,
                                                                ),
                                                                width:
                                                                    getHorizontalSize(
                                                                  56.90,
                                                                ),
                                                                margin:
                                                                    EdgeInsets
                                                                        .only(
                                                                  left:
                                                                      getHorizontalSize(
                                                                    10.00,
                                                                  ),
                                                                  top:
                                                                      getVerticalSize(
                                                                    1.49,
                                                                  ),
                                                                ),
                                                                child: Stack(
                                                                  alignment:
                                                                      Alignment
                                                                          .topLeft,
                                                                  children: [
                                                                    Align(
                                                                      alignment:
                                                                          Alignment
                                                                              .bottomRight,
                                                                      child:
                                                                          Padding(
                                                                        padding:
                                                                            EdgeInsets.only(
                                                                          left:
                                                                              getHorizontalSize(
                                                                            10.00,
                                                                          ),
                                                                          top:
                                                                              getVerticalSize(
                                                                            10.00,
                                                                          ),
                                                                          bottom:
                                                                              getVerticalSize(
                                                                            2.88,
                                                                          ),
                                                                        ),
                                                                        child:
                                                                            Container(
                                                                          height:
                                                                              getVerticalSize(
                                                                            11.20,
                                                                          ),
                                                                          width:
                                                                              getHorizontalSize(
                                                                            14.90,
                                                                          ),
                                                                          child:
                                                                              SvgPicture.asset(
                                                                            ImageConstant.imgVector39,
                                                                            fit:
                                                                                BoxFit.fill,
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                    Align(
                                                                      alignment:
                                                                          Alignment
                                                                              .topLeft,
                                                                      child:
                                                                          Padding(
                                                                        padding:
                                                                            EdgeInsets.only(
                                                                          left:
                                                                              getHorizontalSize(
                                                                            16.90,
                                                                          ),
                                                                          right:
                                                                              getHorizontalSize(
                                                                            16.90,
                                                                          ),
                                                                          bottom:
                                                                              getVerticalSize(
                                                                            10.00,
                                                                          ),
                                                                        ),
                                                                        child:
                                                                            Container(
                                                                          height:
                                                                              getVerticalSize(
                                                                            16.10,
                                                                          ),
                                                                          width:
                                                                              getHorizontalSize(
                                                                            11.30,
                                                                          ),
                                                                          child:
                                                                              SvgPicture.asset(
                                                                            ImageConstant.imgVector40,
                                                                            fit:
                                                                                BoxFit.fill,
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                    Align(
                                                                      alignment:
                                                                          Alignment
                                                                              .bottomRight,
                                                                      child:
                                                                          Padding(
                                                                        padding:
                                                                            EdgeInsets.only(
                                                                          left:
                                                                              getHorizontalSize(
                                                                            10.00,
                                                                          ),
                                                                          top:
                                                                              getVerticalSize(
                                                                            10.00,
                                                                          ),
                                                                          right:
                                                                              getHorizontalSize(
                                                                            0.06,
                                                                          ),
                                                                        ),
                                                                        child:
                                                                            Text(
                                                                          "AgronoMek",
                                                                          overflow:
                                                                              TextOverflow.ellipsis,
                                                                          textAlign:
                                                                              TextAlign.left,
                                                                          style: AppStyle
                                                                              .textstyleamaranthregular10
                                                                              .copyWith(
                                                                            fontSize:
                                                                                getFontSize(
                                                                              10,
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                    Align(
                                                                      alignment:
                                                                          Alignment
                                                                              .topLeft,
                                                                      child:
                                                                          Padding(
                                                                        padding:
                                                                            EdgeInsets.only(
                                                                          top:
                                                                              getVerticalSize(
                                                                            7.20,
                                                                          ),
                                                                          right:
                                                                              getHorizontalSize(
                                                                            10.00,
                                                                          ),
                                                                          bottom:
                                                                              getVerticalSize(
                                                                            10.00,
                                                                          ),
                                                                        ),
                                                                        child:
                                                                            Container(
                                                                          height:
                                                                              getVerticalSize(
                                                                            2.03,
                                                                          ),
                                                                          width:
                                                                              getHorizontalSize(
                                                                            9.00,
                                                                          ),
                                                                          child:
                                                                              SvgPicture.asset(
                                                                            ImageConstant.imgVector62,
                                                                            fit:
                                                                                BoxFit.fill,
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsets.only(
                                                            left:
                                                                getHorizontalSize(
                                                              6.00,
                                                            ),
                                                            top:
                                                                getVerticalSize(
                                                              5.70,
                                                            ),
                                                            bottom:
                                                                getVerticalSize(
                                                              61.18,
                                                            ),
                                                          ),
                                                          child: Container(
                                                            height:
                                                                getVerticalSize(
                                                              14.50,
                                                            ),
                                                            width:
                                                                getHorizontalSize(
                                                              11.30,
                                                            ),
                                                            child: SvgPicture
                                                                .asset(
                                                              ImageConstant
                                                                  .imgVector44,
                                                              fit: BoxFit.fill,
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: getHorizontalSize(
                        10.00,
                      ),
                      top: getVerticalSize(
                        63.86,
                      ),
                      right: getHorizontalSize(
                        10.00,
                      ),
                    ),
                    child: Text(
                      "Identify Plants",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style: AppStyle.textstyleamaranthbold19.copyWith(
                        fontSize: getFontSize(
                          19,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: getHorizontalSize(
                      240.00,
                    ),
                    margin: EdgeInsets.only(
                      left: getHorizontalSize(
                        10.00,
                      ),
                      top: getVerticalSize(
                        22.00,
                      ),
                      right: getHorizontalSize(
                        10.00,
                      ),
                    ),
                    child: Text(
                      "You can identify the plants you don't know \nthrough your camera",
                      maxLines: null,
                      textAlign: TextAlign.center,
                      style: AppStyle.textstyleamaranthregular13.copyWith(
                        fontSize: getFontSize(
                          13,
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(
                        top: getVerticalSize(
                          55.00,
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Container(
                            height: getSize(
                              7.00,
                            ),
                            width: getSize(
                              7.00,
                            ),
                            decoration: BoxDecoration(
                              color: ColorConstant.tealA400,
                              borderRadius: BorderRadius.circular(
                                getHorizontalSize(
                                  3.50,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            height: getSize(
                              7.00,
                            ),
                            width: getSize(
                              7.00,
                            ),
                            margin: EdgeInsets.only(
                              left: getHorizontalSize(
                                9.00,
                              ),
                            ),
                            decoration: BoxDecoration(
                              color: ColorConstant.gray300,
                              borderRadius: BorderRadius.circular(
                                getHorizontalSize(
                                  3.50,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            height: getSize(
                              7.00,
                            ),
                            width: getSize(
                              7.00,
                            ),
                            margin: EdgeInsets.only(
                              left: getHorizontalSize(
                                9.00,
                              ),
                            ),
                            decoration: BoxDecoration(
                              color: ColorConstant.gray300,
                              borderRadius: BorderRadius.circular(
                                getHorizontalSize(
                                  3.50,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: getHorizontalSize(
                        10.00,
                      ),
                      top: getVerticalSize(
                        54.00,
                      ),
                      right: getHorizontalSize(
                        10.00,
                      ),
                      bottom: getVerticalSize(
                        20.00,
                      ),
                    ),
                    child: GestureDetector(
                      onTap: () {
                        onTapBtnNext();
                      },
                      child: Container(
                        alignment: Alignment.center,
                        height: getVerticalSize(
                          50.00,
                        ),
                        width: size.width,
                        decoration: AppDecoration.textstyleamaranthbold15,
                        child: Text(
                          "NEXT",
                          textAlign: TextAlign.left,
                          style: AppStyle.textstyleamaranthbold15.copyWith(
                            fontSize: getFontSize(
                              15,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  onTapBtnNext() {
    Get.toNamed(AppRoutes.boarding2Screen);
  }
}

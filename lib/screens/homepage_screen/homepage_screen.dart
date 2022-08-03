import 'dart:convert';

import 'package:agronomek_app/core/app_export.dart';
import 'package:agronomek_app/theme/app_style.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'controller/homepage_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:jwt_decode/jwt_decode.dart';
import 'package:cool_alert/cool_alert.dart';
import 'package:http/http.dart' as http;

class HomepageScreen extends GetWidget<HomepageController> {
  final String QRCode;
  final String tokenOfUser;
  final String dataInformation;

  HomepageScreen(this.QRCode, this.tokenOfUser, this.dataInformation, {Key? key})
      : super(key: key);

  var nameOfGreenHouse="";
  var valueOfTemp="";
  var valueOfHum="";
  
  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration.zero, () => showAlert(context));
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.gray500,
        body: Container(
          height: getVerticalSize(
            1300.00,
          ),
          width: size.width,
          decoration: BoxDecoration(
            color: ColorConstant.gray500,
          ),
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  margin: EdgeInsets.only(
                    top: getVerticalSize(
                      8.00,
                    ),
                  ),
                  decoration: BoxDecoration(
                    color: ColorConstant.gray500,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: SingleChildScrollView(
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Align(
                                  alignment: Alignment.center,
                                  child: Container(
                                    height: getVerticalSize(
                                      427.00,
                                    ),
                                    width: getHorizontalSize(
                                      362.00,
                                    ),
                                    margin: EdgeInsets.only(
                                      left: getHorizontalSize(
                                        11.00,
                                      ),
                                      right: getHorizontalSize(
                                        2.00,
                                      ),
                                    ),
                                    child: Stack(
                                      alignment: Alignment.topRight,
                                      children: [
                                          Align(
                                            alignment: Alignment.bottomLeft,
                                            child: Container(
                                              margin: EdgeInsets.only(
                                                top: getVerticalSize(
                                                  10.00,
                                                ),
                                                right: getHorizontalSize(
                                                  10.00,
                                                ),
                                              ),
                                              decoration: BoxDecoration(
                                                color: ColorConstant.teal400A2,
                                                borderRadius:
                                                    BorderRadius.circular(
                                                  getHorizontalSize(
                                                    39.00,
                                                  ),
                                                ),
                                              ),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                      left: getHorizontalSize(
                                                        38.00,
                                                      ),
                                                      top: getVerticalSize(
                                                        26.00,
                                                      ),
                                                      right: getHorizontalSize(
                                                        38.00,
                                                      ),
                                                    ),
                                                    child: Text(
                                                      "Sousse",
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.right,
                                                      style: AppStyle
                                                          .textstylerobotoslabmedium30HomePageModel2
                                                          .copyWith(
                                                        fontSize: getFontSize(
                                                          30,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                      left: getHorizontalSize(
                                                        41.00,
                                                      ),
                                                      right: getHorizontalSize(
                                                        41.00,
                                                      ),
                                                    ),
                                                    child: Text(
                                                      "Mon 13/07/22",
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .textstylerobotoslabregular15HomePageModel2
                                                          .copyWith(
                                                        fontSize: getFontSize(
                                                          15,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                      top: getVerticalSize(
                                                        8.00,
                                                      ),
                                                      bottom: getVerticalSize(
                                                        23.00,
                                                      ),
                                                    ),
                                                    child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.min,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment.start,
                                                      children: [
                                                        Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceBetween,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .center,
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            Container(
                                                              margin:
                                                                  EdgeInsets.only(
                                                                left:
                                                                    getHorizontalSize(
                                                                  28.00,
                                                                ),
                                                              ),
                                                              child: RichText(
                                                                text: TextSpan(
                                                                  children: [
                                                                    TextSpan(
                                                                      text:
                                                                          '$valueOfTemp°c',
                                                                      style:
                                                                          TextStyle(
                                                                        color: ColorConstant
                                                                            .whiteA700,
                                                                        fontSize:
                                                                            getFontSize(
                                                                          90,
                                                                        ),
                                                                        fontFamily:
                                                                            'Roboto Slab',
                                                                        fontWeight:
                                                                            FontWeight
                                                                                .w500,
                                                                      ),
                                                                    ),
                                                                    // TextSpan(
                                                                    //   text:
                                                                    //       "c"
                                                                    //       ,
                                                                    //   style:
                                                                    //       TextStyle(
                                                                    //     color: ColorConstant
                                                                    //         .whiteA700,
                                                                    //     fontSize:
                                                                    //         getFontSize(
                                                                    //       40,
                                                                    //     ),
                                                                    //     fontFamily:
                                                                    //         'Roboto Slab',
                                                                    //     fontWeight:
                                                                    //         FontWeight
                                                                    //             .w500,
                                                                    //   ),
                                                                    // ),
                                                                  ],
                                                                ),
                                                                textAlign:
                                                                    TextAlign
                                                                        .center,
                                                              ),
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  EdgeInsets.only(
                                                                top:
                                                                    getVerticalSize(
                                                                  13.53,
                                                                ),
                                                                right:
                                                                    getHorizontalSize(
                                                                  34.63,
                                                                ),
                                                                bottom:
                                                                    getVerticalSize(
                                                                  14.16,
                                                                ),
                                                              ),
                                                              child: Image.asset(
                                                                ImageConstant
                                                                    .imgGroup2HomePage,
                                                                height:
                                                                    getVerticalSize(
                                                                  80.31,
                                                                ),
                                                                width:
                                                                    getHorizontalSize(
                                                                  74.45,
                                                                ),
                                                                fit: BoxFit.fill,
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsets.only(
                                                            top: getVerticalSize(
                                                              7.00,
                                                            ),
                                                          ),
                                                          child: Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .spaceEvenly,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .center,
                                                            mainAxisSize:
                                                                MainAxisSize.max,
                                                            children: [
                                                              Container(
                                                                decoration:
                                                                    BoxDecoration(
                                                                  color: ColorConstant
                                                                      .cyan40079,
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                    getHorizontalSize(
                                                                      22.00,
                                                                    ),
                                                                  ),
                                                                ),
                                                                child: Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .min,
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .center,
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .start,
                                                                  children: [
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
                                                                          2.00,
                                                                        ),
                                                                        right:
                                                                            getHorizontalSize(
                                                                          10.00,
                                                                        ),
                                                                      ),
                                                                      child: Text(
                                                                        "Temp",
                                                                        overflow:
                                                                            TextOverflow
                                                                                .ellipsis,
                                                                        textAlign:
                                                                            TextAlign
                                                                                .center,
                                                                        style: AppStyle
                                                                            .textstylerobotocondensedregular30HomePageModel2
                                                                            .copyWith(
                                                                          fontSize:
                                                                              getFontSize(
                                                                            30,
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                    Align(
                                                                      alignment:
                                                                          Alignment
                                                                              .centerLeft,
                                                                      child:
                                                                          Padding(
                                                                        padding:
                                                                            EdgeInsets
                                                                                .only(
                                                                          left:
                                                                              getHorizontalSize(
                                                                            29.00,
                                                                          ),
                                                                          top:
                                                                              getVerticalSize(
                                                                            10.00,
                                                                          ),
                                                                          right:
                                                                              getHorizontalSize(
                                                                            29.00,
                                                                          ),
                                                                          bottom:
                                                                              getVerticalSize(
                                                                            1.00,
                                                                          ),
                                                                        ),
                                                                        child:
                                                                            Text(
                                                                          '$valueOfTemp c',
                                                                          overflow:
                                                                              TextOverflow.ellipsis,
                                                                          textAlign:
                                                                              TextAlign.right,
                                                                          style: AppStyle
                                                                              .textstylerobotocondensedregular25HomePageModel2
                                                                              .copyWith(
                                                                            fontSize:
                                                                                getFontSize(
                                                                              25,
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                              Container(
                                                                decoration:
                                                                    BoxDecoration(
                                                                  color: ColorConstant
                                                                      .cyan30099,
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                    getHorizontalSize(
                                                                      22.00,
                                                                    ),
                                                                  ),
                                                                ),
                                                                child: Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .min,
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .center,
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .start,
                                                                  children: [
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
                                                                          2.00,
                                                                        ),
                                                                        right:
                                                                            getHorizontalSize(
                                                                          10.00,
                                                                        ),
                                                                      ),
                                                                      child: Text(
                                                                        "Hum",
                                                                        overflow:
                                                                            TextOverflow
                                                                                .ellipsis,
                                                                        textAlign:
                                                                            TextAlign
                                                                                .center,
                                                                        style: AppStyle
                                                                            .textstylerobotocondensedregular30HomePageModel2
                                                                            .copyWith(
                                                                          fontSize:
                                                                              getFontSize(
                                                                            30,
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ),
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
                                                                          10.00,
                                                                        ),
                                                                        right:
                                                                            getHorizontalSize(
                                                                          10.00,
                                                                        ),
                                                                        bottom:
                                                                            getVerticalSize(
                                                                          1.00,
                                                                        ),
                                                                      ),
                                                                      child: Text(
                                                                        '$valueOfTemp %',
                                                                        overflow:
                                                                            TextOverflow
                                                                                .ellipsis,
                                                                        textAlign:
                                                                            TextAlign
                                                                                .right,
                                                                        style: AppStyle
                                                                            .textstylerobotocondensedregular25HomePageModel2
                                                                            .copyWith(
                                                                          fontSize:
                                                                              getFontSize(
                                                                            25,
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                          
                                        Align(
                                          alignment: Alignment.topRight,
                                          child: Container(
                                            height: getVerticalSize(
                                              161.00,
                                            ),
                                            width: getHorizontalSize(
                                              145.00,
                                            ),
                                            margin: EdgeInsets.only(
                                              left: getHorizontalSize(
                                                10.00,
                                              ),
                                              bottom: getVerticalSize(
                                                10.00,
                                              ),
                                            ),
                                            child: Stack(
                                              alignment: Alignment.topRight,
                                              children: [
                                                Align(
                                                  alignment:
                                                      Alignment.centerLeft,
                                                  child: Container(
                                                    height: getVerticalSize(
                                                      161.00,
                                                    ),
                                                    width: getHorizontalSize(
                                                      145.00,
                                                    ),
                                                    decoration: BoxDecoration(
                                                      color: ColorConstant
                                                          .whiteA70026,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                        getHorizontalSize(
                                                          80.50,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Align(
                                                  alignment: Alignment.topRight,
                                                  child: Container(
                                                    width: getHorizontalSize(
                                                      89.00,
                                                    ),
                                                    margin: EdgeInsets.only(
                                                      left: getHorizontalSize(
                                                        24.00,
                                                      ),
                                                      top: getVerticalSize(
                                                        22.00,
                                                      ),
                                                      right: getHorizontalSize(
                                                        24.00,
                                                      ),
                                                      bottom: getVerticalSize(
                                                        22.00,
                                                      ),
                                                    ),
                                                    child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.min,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .end,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              EdgeInsets.only(
                                                            left:
                                                                getHorizontalSize(
                                                              10.00,
                                                            ),
                                                          ),
                                                          child: ClipRRect(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                              getHorizontalSize(
                                                                23.50,
                                                              ),
                                                            ),
                                                            child: Image.asset(
                                                              ImageConstant
                                                                  .imgEllipse2,
                                                              height: getSize(
                                                                47.00,
                                                              ),
                                                              width: getSize(
                                                                47.00,
                                                              ),
                                                              fit: BoxFit.fill,
                                                            ),
                                                          ),
                                                        ),
                                                        Align(
                                                          alignment: Alignment
                                                              .centerLeft,
                                                          child: Padding(
                                                            padding:
                                                                EdgeInsets.only(
                                                              top:
                                                                  getVerticalSize(
                                                                6.00,
                                                              ),
                                                            ),
                                                            child: Text(
                                                              "Home",
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .textstyleamaranthregular32
                                                                  .copyWith(
                                                                fontSize:
                                                                    getFontSize(
                                                                  32,
                                                                ),
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
                                          ),
                                        ),
                                        
                                          Align(
                                            alignment: Alignment.topRight,
                                            child: Padding(
                                              padding: EdgeInsets.only(
                                                left: getHorizontalSize(
                                                  31.00,
                                                ),
                                                top: getVerticalSize(
                                                  151.00,
                                                ),
                                                right: getHorizontalSize(
                                                  31.00,
                                                ),
                                                bottom: getVerticalSize(
                                                  151.00,
                                                ),
                                              ),
                                              child: Text(
                                                'Name GreenHouse: $nameOfGreenHouse',
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.right,
                                                style: AppStyle
                                                    .textstyleamaranthregular14
                                                    .copyWith(
                                                  fontSize: getFontSize(
                                                    14,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          
                                        Align(
                                          alignment: Alignment.topLeft,
                                          child: Padding(
                                            padding: EdgeInsets.only(
                                              left: getHorizontalSize(
                                                21.00,
                                              ),
                                              top: getVerticalSize(
                                                27.67,
                                              ),
                                              right: getHorizontalSize(
                                                21.00,
                                              ),
                                              bottom: getVerticalSize(
                                                27.67,
                                              ),
                                            ),
                                            child: GestureDetector(
                                              onTap: (){
                                                print("This function must make an Logout function");
                                              },
                                              child: Container(
                                                height: getVerticalSize(
                                                  26.67,
                                                ),
                                                width: getHorizontalSize(
                                                  29.17,
                                                ),
                                                child: SvgPicture.asset(
                                                  ImageConstant.imgShape,
                                                  fit: BoxFit.fill,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  
                                  ),
                                ),
                                
                                  Align(
                                    alignment: Alignment.center,
                                    child: Container(
                                      margin: EdgeInsets.only(
                                        left: getHorizontalSize(
                                          11.00,
                                        ),
                                        top: getVerticalSize(
                                          13.00,
                                        ),
                                        right: getHorizontalSize(
                                          11.00,
                                        ),
                                      ),
                                      decoration: BoxDecoration(
                                        color: ColorConstant.gray900,
                                        borderRadius: BorderRadius.circular(
                                          getHorizontalSize(
                                            50.00,
                                          ),
                                        ),
                                        boxShadow: [
                                          BoxShadow(
                                            color: ColorConstant.whiteA7000a,
                                            spreadRadius: getHorizontalSize(
                                              2.00,
                                            ),
                                            blurRadius: getHorizontalSize(
                                              2.00,
                                            ),
                                            offset: Offset(
                                              -18,
                                              -18,
                                            ),
                                          ),
                                        ],
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.only(
                                              left: getHorizontalSize(
                                                45.00,
                                              ),
                                              top: getVerticalSize(
                                                43.00,
                                              ),
                                              bottom: getVerticalSize(
                                                43.00,
                                              ),
                                            ),
                                            child: Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              mainAxisSize: MainAxisSize.min,
                                              children: [
                                                Container(
                                                  height: getVerticalSize(
                                                    18.00,
                                                  ),
                                                  width: getHorizontalSize(
                                                    14.00,
                                                  ),
                                                  child: SvgPicture.asset(
                                                    ImageConstant.imgShape1,
                                                    fit: BoxFit.fill,
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsets.only(
                                                    left: getHorizontalSize(
                                                      66.00,
                                                    ),
                                                  ),
                                                  child: Container(
                                                    height: getSize(
                                                      18.00,
                                                    ),
                                                    width: getSize(
                                                      18.00,
                                                    ),
                                                    child: SvgPicture.asset(
                                                      ImageConstant.imgShape2,
                                                      fit: BoxFit.fill,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(
                                              top: getVerticalSize(
                                                44.00,
                                              ),
                                              right: getHorizontalSize(
                                                37.50,
                                              ),
                                              bottom: getVerticalSize(
                                                42.50,
                                              ),
                                            ),
                                            child: Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              mainAxisSize: MainAxisSize.min,
                                              children: [
                                                Container(
                                                  height: getVerticalSize(
                                                    17.50,
                                                  ),
                                                  width: getHorizontalSize(
                                                    9.50,
                                                  ),
                                                  child: SvgPicture.asset(
                                                    ImageConstant.imgHot,
                                                    fit: BoxFit.fill,
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsets.only(
                                                    left: getHorizontalSize(
                                                      62.50,
                                                    ),
                                                  ),
                                                  child: Container(
                                                    height: getVerticalSize(
                                                      17.50,
                                                    ),
                                                    width: getHorizontalSize(
                                                      9.50,
                                                    ),
                                                    child: SvgPicture.asset(
                                                      ImageConstant.imgCold,
                                                      fit: BoxFit.fill,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  
                                  Align(
                                    alignment: Alignment.center,
                                    child: Container(
                                      width: double.infinity,
                                      margin: EdgeInsets.only(
                                        left: getHorizontalSize(
                                          11.00,
                                        ),
                                        top: getVerticalSize(
                                          20.00,
                                        ),
                                        right: getHorizontalSize(
                                          11.00,
                                        ),
                                      ),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(
                                          getHorizontalSize(
                                            40.00,
                                          ),
                                        ),
                                        gradient: LinearGradient(
                                          begin: Alignment(
                                            0.30000000709295305,
                                            -1.338124236416327e-8,
                                          ),
                                          end: Alignment(
                                            0.4999999795436867,
                                            0.8199999819457526,
                                          ),
                                          colors: [
                                            ColorConstant.gray800,
                                            ColorConstant.gray901,
                                          ],
                                        ),
                                      ),
                                      child: OutlineGradientButton(
                                        padding: EdgeInsets.only(
                                          left: getHorizontalSize(
                                            1.00,
                                          ),
                                          top: getVerticalSize(
                                            1.00,
                                          ),
                                          right: getHorizontalSize(
                                            1.00,
                                          ),
                                          bottom: getVerticalSize(
                                            1.00,
                                          ),
                                        ),
                                        strokeWidth: getHorizontalSize(
                                          1.00,
                                        ),
                                        gradient: LinearGradient(
                                          begin: Alignment(
                                            0.5,
                                            -3.0616171314629196e-17,
                                          ),
                                          end: Alignment(
                                            0.5,
                                            0.9999999999999999,
                                          ),
                                          colors: [
                                            ColorConstant.whiteA700,
                                            ColorConstant.black90000,
                                          ],
                                        ),
                                        corners: Corners(
                                          topLeft: Radius.circular(
                                            40,
                                          ),
                                          topRight: Radius.circular(
                                            40,
                                          ),
                                          bottomLeft: Radius.circular(
                                            40,
                                          ),
                                          bottomRight: Radius.circular(
                                            40,
                                          ),
                                        ),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding: EdgeInsets.only(
                                                left: getHorizontalSize(
                                                  30.00,
                                                ),
                                                top: getVerticalSize(
                                                  50.00,
                                                ),
                                                right: getHorizontalSize(
                                                  30.00,
                                                ),
                                              ),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                      left: getHorizontalSize(
                                                        4.00,
                                                      ),
                                                    ),
                                                    child: Row(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              EdgeInsets.only(
                                                            top: getVerticalSize(
                                                              3.00,
                                                            ),
                                                            bottom:
                                                                getVerticalSize(
                                                              4.00,
                                                            ),
                                                          ),
                                                          child: Container(
                                                            height:
                                                                getVerticalSize(
                                                              17.00,
                                                            ),
                                                            width:
                                                                getHorizontalSize(
                                                              16.00,
                                                            ),
                                                            child:
                                                                SvgPicture.asset(
                                                              ImageConstant
                                                                  .imgShape3,
                                                              fit: BoxFit.fill,
                                                            ),
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsets.only(
                                                            left:
                                                                getHorizontalSize(
                                                              62.50,
                                                            ),
                                                          ),
                                                          child: Text(
                                                            "Control",
                                                            overflow: TextOverflow
                                                                .ellipsis,
                                                            textAlign:
                                                                TextAlign.center,
                                                            style: AppStyle
                                                                .textstyleamaranthregular20HomePageModel2
                                                                .copyWith(
                                                              fontSize:
                                                                  getFontSize(
                                                                20,
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                      left: getHorizontalSize(
                                                        103.50,
                                                      ),
                                                      top: getVerticalSize(
                                                        4.00,
                                                      ),
                                                      bottom: getVerticalSize(
                                                        4.00,
                                                      ),
                                                    ),
                                                    child: Container(
                                                      height: getVerticalSize(
                                                        16.00,
                                                      ),
                                                      width: getHorizontalSize(
                                                        8.00,
                                                      ),
                                                      child: SvgPicture.asset(
                                                        ImageConstant.imgShape4,
                                                        fit: BoxFit.fill,
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsets.only(
                                                left: getHorizontalSize(
                                                  30.00,
                                                ),
                                                top: getVerticalSize(
                                                  60.00,
                                                ),
                                                right: getHorizontalSize(
                                                  30.00,
                                                ),
                                              ),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                      left: getHorizontalSize(
                                                        4.50,
                                                      ),
                                                    ),
                                                    child: Row(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              EdgeInsets.only(
                                                            top: getVerticalSize(
                                                              4.00,
                                                            ),
                                                            bottom:
                                                                getVerticalSize(
                                                              5.00,
                                                            ),
                                                          ),
                                                          child: Container(
                                                            height:
                                                                getVerticalSize(
                                                              15.00,
                                                            ),
                                                            width:
                                                                getHorizontalSize(
                                                              16.88,
                                                            ),
                                                            child:
                                                                SvgPicture.asset(
                                                              ImageConstant
                                                                  .imgShape5,
                                                              fit: BoxFit.fill,
                                                            ),
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsets.only(
                                                            left:
                                                                getHorizontalSize(
                                                              61.62,
                                                            ),
                                                          ),
                                                          child: Text(
                                                            "Climate",
                                                            overflow: TextOverflow
                                                                .ellipsis,
                                                            textAlign:
                                                                TextAlign.center,
                                                            style: AppStyle
                                                                .textstyleamaranthregular20HomePageModel2
                                                                .copyWith(
                                                              fontSize:
                                                                  getFontSize(
                                                                20,
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                      left: getHorizontalSize(
                                                        98.00,
                                                      ),
                                                      top: getVerticalSize(
                                                        4.00,
                                                      ),
                                                      bottom: getVerticalSize(
                                                        4.00,
                                                      ),
                                                    ),
                                                    child: Container(
                                                      height: getVerticalSize(
                                                        16.00,
                                                      ),
                                                      width: getHorizontalSize(
                                                        8.00,
                                                      ),
                                                      child: SvgPicture.asset(
                                                        ImageConstant.imgShape6,
                                                        fit: BoxFit.fill,
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsets.only(
                                                left: getHorizontalSize(
                                                  30.00,
                                                ),
                                                top: getVerticalSize(
                                                  60.00,
                                                ),
                                                right: getHorizontalSize(
                                                  30.00,
                                                ),
                                              ),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                      left: getHorizontalSize(
                                                        5.00,
                                                      ),
                                                    ),
                                                    child: Row(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .center,
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              EdgeInsets.only(
                                                            top: getVerticalSize(
                                                              3.00,
                                                            ),
                                                            bottom:
                                                                getVerticalSize(
                                                              3.00,
                                                            ),
                                                          ),
                                                          child: Container(
                                                            height:
                                                                getVerticalSize(
                                                              18.00,
                                                            ),
                                                            width:
                                                                getHorizontalSize(
                                                              14.00,
                                                            ),
                                                            child:
                                                                SvgPicture.asset(
                                                              ImageConstant
                                                                  .imgShape7,
                                                              fit: BoxFit.fill,
                                                            ),
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsets.only(
                                                            left:
                                                                getHorizontalSize(
                                                              43.00,
                                                            ),
                                                          ),
                                                          child: Text(
                                                            "Water Level",
                                                            overflow: TextOverflow
                                                                .ellipsis,
                                                            textAlign:
                                                                TextAlign.center,
                                                            style: AppStyle
                                                                .textstyleamaranthregular20HomePageModel2
                                                                .copyWith(
                                                              fontSize:
                                                                  getFontSize(
                                                                20,
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                      left: getHorizontalSize(
                                                        85.00,
                                                      ),
                                                      top: getVerticalSize(
                                                        4.00,
                                                      ),
                                                      bottom: getVerticalSize(
                                                        4.00,
                                                      ),
                                                    ),
                                                    child: Container(
                                                      height: getVerticalSize(
                                                        16.00,
                                                      ),
                                                      width: getHorizontalSize(
                                                        8.00,
                                                      ),
                                                      child: SvgPicture.asset(
                                                        ImageConstant.imgShape8,
                                                        fit: BoxFit.fill,
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsets.only(
                                                left: getHorizontalSize(
                                                  30.00,
                                                ),
                                                top: getVerticalSize(
                                                  60.00,
                                                ),
                                                right: getHorizontalSize(
                                                  30.00,
                                                ),
                                              ),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                      left: getHorizontalSize(
                                                        3.00,
                                                      ),
                                                    ),
                                                    child: Row(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .center,
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              EdgeInsets.only(
                                                            top: getVerticalSize(
                                                              3.00,
                                                            ),
                                                            bottom:
                                                                getVerticalSize(
                                                              3.00,
                                                            ),
                                                          ),
                                                          child: Container(
                                                            height: getSize(
                                                              18.00,
                                                            ),
                                                            width: getSize(
                                                              18.00,
                                                            ),
                                                            child:
                                                                SvgPicture.asset(
                                                              ImageConstant
                                                                  .imgShape9,
                                                              fit: BoxFit.fill,
                                                            ),
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsets.only(
                                                            left:
                                                                getHorizontalSize(
                                                              47.00,
                                                            ),
                                                          ),
                                                          child: Text(
                                                            "Brightness",
                                                            overflow: TextOverflow
                                                                .ellipsis,
                                                            textAlign:
                                                                TextAlign.center,
                                                            style: AppStyle
                                                                .textstyleamaranthregular20HomePageModel2
                                                                .copyWith(
                                                              fontSize:
                                                                  getFontSize(
                                                                20,
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                      left: getHorizontalSize(
                                                        89.00,
                                                      ),
                                                      top: getVerticalSize(
                                                        4.00,
                                                      ),
                                                      bottom: getVerticalSize(
                                                        4.00,
                                                      ),
                                                    ),
                                                    child: Container(
                                                      height: getVerticalSize(
                                                        16.00,
                                                      ),
                                                      width: getHorizontalSize(
                                                        8.00,
                                                      ),
                                                      child: SvgPicture.asset(
                                                        ImageConstant.imgShape10,
                                                        fit: BoxFit.fill,
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsets.only(
                                                left: getHorizontalSize(
                                                  30.00,
                                                ),
                                                top: getVerticalSize(
                                                  60.00,
                                                ),
                                                right: getHorizontalSize(
                                                  30.00,
                                                ),
                                              ),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                      left: getHorizontalSize(
                                                        7.00,
                                                      ),
                                                    ),
                                                    child: Row(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              EdgeInsets.only(
                                                            top: getVerticalSize(
                                                              4.00,
                                                            ),
                                                            bottom:
                                                                getVerticalSize(
                                                              2.50,
                                                            ),
                                                          ),
                                                          child: Container(
                                                            height:
                                                                getVerticalSize(
                                                              17.50,
                                                            ),
                                                            width:
                                                                getHorizontalSize(
                                                              9.50,
                                                            ),
                                                            child:
                                                                SvgPicture.asset(
                                                              ImageConstant
                                                                  .imgHot1,
                                                              fit: BoxFit.fill,
                                                            ),
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsets.only(
                                                            left:
                                                                getHorizontalSize(
                                                              44.00,
                                                            ),
                                                          ),
                                                          child: Text(
                                                            "Temperature",
                                                            overflow: TextOverflow
                                                                .ellipsis,
                                                            textAlign:
                                                                TextAlign.center,
                                                            style: AppStyle
                                                                .textstyleamaranthregular20HomePageModel2
                                                                .copyWith(
                                                              fontSize:
                                                                  getFontSize(
                                                                20,
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                      left: getHorizontalSize(
                                                        81.50,
                                                      ),
                                                      top: getVerticalSize(
                                                        4.00,
                                                      ),
                                                      bottom: getVerticalSize(
                                                        4.00,
                                                      ),
                                                    ),
                                                    child: Container(
                                                      height: getVerticalSize(
                                                        16.00,
                                                      ),
                                                      width: getHorizontalSize(
                                                        8.00,
                                                      ),
                                                      child: SvgPicture.asset(
                                                        ImageConstant.imgShape11,
                                                        fit: BoxFit.fill,
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsets.only(
                                                left: getHorizontalSize(
                                                  30.00,
                                                ),
                                                top: getVerticalSize(
                                                  60.00,
                                                ),
                                                right: getHorizontalSize(
                                                  30.00,
                                                ),
                                              ),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                      left: getHorizontalSize(
                                                        7.00,
                                                      ),
                                                      top: getVerticalSize(
                                                        4.00,
                                                      ),
                                                      bottom: getVerticalSize(
                                                        2.50,
                                                      ),
                                                    ),
                                                    child: Container(
                                                      height: getVerticalSize(
                                                        17.50,
                                                      ),
                                                      width: getHorizontalSize(
                                                        9.50,
                                                      ),
                                                      child: SvgPicture.asset(
                                                        ImageConstant.imgCold1,
                                                        fit: BoxFit.fill,
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                      left: getHorizontalSize(
                                                        69.00,
                                                      ),
                                                    ),
                                                    child: Text(
                                                      "Humidity",
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.center,
                                                      style: AppStyle
                                                          .textstyleamaranthregular20HomePageModel2
                                                          .copyWith(
                                                        fontSize: getFontSize(
                                                          20,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                      left: getHorizontalSize(
                                                        80.50,
                                                      ),
                                                      top: getVerticalSize(
                                                        4.00,
                                                      ),
                                                      bottom: getVerticalSize(
                                                        4.00,
                                                      ),
                                                    ),
                                                    child: Container(
                                                      height: getVerticalSize(
                                                        16.00,
                                                      ),
                                                      width: getHorizontalSize(
                                                        8.00,
                                                      ),
                                                      child: SvgPicture.asset(
                                                        ImageConstant.imgShape12,
                                                        fit: BoxFit.fill,
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsets.only(
                                                left: getHorizontalSize(
                                                  30.00,
                                                ),
                                                top: getVerticalSize(
                                                  60.00,
                                                ),
                                                right: getHorizontalSize(
                                                  30.00,
                                                ),
                                                bottom: getVerticalSize(
                                                  33.00,
                                                ),
                                              ),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                      left: getHorizontalSize(
                                                        4.00,
                                                      ),
                                                      top: getVerticalSize(
                                                        3.00,
                                                      ),
                                                      bottom: getVerticalSize(
                                                        3.00,
                                                      ),
                                                    ),
                                                    child: Container(
                                                      height: getVerticalSize(
                                                        18.00,
                                                      ),
                                                      width: getHorizontalSize(
                                                        16.00,
                                                      ),
                                                      child: SvgPicture.asset(
                                                        ImageConstant.imgShape13,
                                                        fit: BoxFit.fill,
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                      left: getHorizontalSize(
                                                        45.00,
                                                      ),
                                                    ),
                                                    child: Text(
                                                      "Weather report",
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.center,
                                                      style: AppStyle
                                                          .textstyleamaranthregular20HomePageModel2
                                                          .copyWith(
                                                        fontSize: getFontSize(
                                                          20,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                      left: getHorizontalSize(
                                                        55.00,
                                                      ),
                                                      top: getVerticalSize(
                                                        4.00,
                                                      ),
                                                      bottom: getVerticalSize(
                                                        4.00,
                                                      ),
                                                    ),
                                                    child: Container(
                                                      height: getVerticalSize(
                                                        16.00,
                                                      ),
                                                      width: getHorizontalSize(
                                                        8.00,
                                                      ),
                                                      child: SvgPicture.asset(
                                                        ImageConstant.imgShape14,
                                                        fit: BoxFit.fill,
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                
                                  Align(
                                    alignment: Alignment.centerLeft,
                                    child: Container(
                                      width: size.width,
                                      margin: EdgeInsets.only(
                                        top: getVerticalSize(
                                          2.00,
                                        ),
                                      ),
                                      child: Container(
                                        height: getVerticalSize(
                                          115.00,
                                        ),
                                        width: size.width,
                                        child: Stack(
                                          alignment: Alignment.bottomCenter,
                                          children: [
                                            Align(
                                              alignment: Alignment.centerLeft,
                                              child: Container(
                                                height: getVerticalSize(
                                                  115.00,
                                                ),
                                                width: getHorizontalSize(
                                                  375.00,
                                                ),
                                                child: SvgPicture.asset(
                                                  ImageConstant.imgUnionWhite,
                                                  fit: BoxFit.fill,
                                                ),
                                              ),
                                            ),
                                            Align(
                                              alignment: Alignment.bottomCenter,
                                              child: Padding(
                                                padding: EdgeInsets.only(
                                                  left: getHorizontalSize(
                                                    39.89,
                                                  ),
                                                  top: getVerticalSize(
                                                    17.00,
                                                  ),
                                                  right: getHorizontalSize(
                                                    39.89,
                                                  ),
                                                  bottom: getVerticalSize(
                                                    17.00,
                                                  ),
                                                ),
                                                child: Row(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  mainAxisSize: MainAxisSize.max,
                                                  children: [
                                                    Padding(
                                                      padding: EdgeInsets.only(
                                                        top: getVerticalSize(
                                                          0.62,
                                                        ),
                                                      ),
                                                      child: Row(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .center,
                                                        mainAxisSize:
                                                            MainAxisSize.min,
                                                        children: [
                                                          Padding(
                                                            padding:
                                                                EdgeInsets.only(
                                                              bottom:
                                                                  getVerticalSize(
                                                                1.00,
                                                              ),
                                                            ),
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
                                                                Align(
                                                                  alignment: Alignment
                                                                      .centerRight,
                                                                  child: Padding(
                                                                    padding:
                                                                        EdgeInsets
                                                                            .only(
                                                                      left:
                                                                          getHorizontalSize(
                                                                        3.00,
                                                                      ),
                                                                    ),
                                                                    child:
                                                                        Container(
                                                                      height:
                                                                          getVerticalSize(
                                                                        23.76,
                                                                      ),
                                                                      width:
                                                                          getHorizontalSize(
                                                                        24.93,
                                                                      ),
                                                                      child: SvgPicture
                                                                          .asset(
                                                                        ImageConstant
                                                                            .imgVector11HomePage,
                                                                        fit: BoxFit
                                                                            .fill,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                                Align(
                                                                  alignment:
                                                                      Alignment
                                                                          .center,
                                                                  child: Padding(
                                                                    padding:
                                                                        EdgeInsets
                                                                            .only(
                                                                      top:
                                                                          getVerticalSize(
                                                                        9.62,
                                                                      ),
                                                                      right:
                                                                          getHorizontalSize(
                                                                        1.00,
                                                                      ),
                                                                    ),
                                                                    child: Text(
                                                                      "HOME",
                                                                      overflow:
                                                                          TextOverflow
                                                                              .ellipsis,
                                                                      textAlign:
                                                                          TextAlign
                                                                              .left,
                                                                      style: AppStyle
                                                                          .textstyleamaranthregular10HomePage2
                                                                          .copyWith(
                                                                        fontSize:
                                                                            getFontSize(
                                                                          10,
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                EdgeInsets.only(
                                                              left:
                                                                  getHorizontalSize(
                                                                47.14,
                                                              ),
                                                              top:
                                                                  getVerticalSize(
                                                                0.38,
                                                              ),
                                                            ),
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
                                                                Align(
                                                                  alignment:
                                                                      Alignment
                                                                          .center,
                                                                  child: Padding(
                                                                    padding:
                                                                        EdgeInsets
                                                                            .only(
                                                                      left:
                                                                          getHorizontalSize(
                                                                        2.04,
                                                                      ),
                                                                      right:
                                                                          getHorizontalSize(
                                                                        2.96,
                                                                      ),
                                                                    ),
                                                                    child:
                                                                        Container(
                                                                      height:
                                                                          getSize(
                                                                        24.00,
                                                                      ),
                                                                      width:
                                                                          getSize(
                                                                        24.00,
                                                                      ),
                                                                      child: SvgPicture
                                                                          .asset(
                                                                        ImageConstant
                                                                            .imgVector_111,
                                                                        fit: BoxFit
                                                                            .fill,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                                Padding(
                                                                  padding:
                                                                      EdgeInsets
                                                                          .only(
                                                                    top:
                                                                        getVerticalSize(
                                                                      10.00,
                                                                    ),
                                                                  ),
                                                                  child: Text(
                                                                    "Statics",
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .center,
                                                                    style: AppStyle
                                                                        .textstyleamaranthregular10HomePage2
                                                                        .copyWith(
                                                                      fontSize:
                                                                          getFontSize(
                                                                        10,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding: EdgeInsets.only(
                                                        left: getHorizontalSize(
                                                          63.04,
                                                        ),
                                                        bottom: getVerticalSize(
                                                          1.00,
                                                        ),
                                                      ),
                                                      child: Row(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .center,
                                                        mainAxisSize:
                                                            MainAxisSize.min,
                                                        children: [
                                                          Padding(
                                                            padding:
                                                                EdgeInsets.only(
                                                              top:
                                                                  getVerticalSize(
                                                                1.00,
                                                              ),
                                                            ),
                                                            child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .min,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .center,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Padding(
                                                                  padding:
                                                                      EdgeInsets
                                                                          .only(
                                                                    left:
                                                                        getHorizontalSize(
                                                                      10.00,
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
                                                                      24.04,
                                                                    ),
                                                                    width:
                                                                        getHorizontalSize(
                                                                      21.37,
                                                                    ),
                                                                    child:
                                                                        SvgPicture
                                                                            .asset(
                                                                      ImageConstant
                                                                          .imgShape15,
                                                                      fit: BoxFit
                                                                          .fill,
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
                                                                        8.96,
                                                                      ),
                                                                    ),
                                                                    child: Text(
                                                                      "Weather report",
                                                                      overflow:
                                                                          TextOverflow
                                                                              .ellipsis,
                                                                      textAlign:
                                                                          TextAlign
                                                                              .left,
                                                                      style: AppStyle
                                                                          .textstyleamaranthregular10HomePage2
                                                                          .copyWith(
                                                                        fontSize:
                                                                            getFontSize(
                                                                          10,
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                EdgeInsets.only(
                                                              left:
                                                                  getHorizontalSize(
                                                                19.22,
                                                              ),
                                                            ),
                                                            child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .min,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .end,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Padding(
                                                                  padding:
                                                                      EdgeInsets
                                                                          .only(
                                                                    left:
                                                                        getHorizontalSize(
                                                                      10.97,
                                                                    ),
                                                                    right:
                                                                        getHorizontalSize(
                                                                      4.67,
                                                                    ),
                                                                  ),
                                                                  child:
                                                                      Container(
                                                                    height:
                                                                        getVerticalSize(
                                                                      25.00,
                                                                    ),
                                                                    width:
                                                                        getHorizontalSize(
                                                                      19.27,
                                                                    ),
                                                                    child:
                                                                        SvgPicture
                                                                            .asset(
                                                                      ImageConstant
                                                                          .imgGroupHomePage,
                                                                      fit: BoxFit
                                                                          .fill,
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
                                                                        9.00,
                                                                      ),
                                                                    ),
                                                                    child: Text(
                                                                      "PROFILE",
                                                                      overflow:
                                                                          TextOverflow
                                                                              .ellipsis,
                                                                      textAlign:
                                                                          TextAlign
                                                                              .left,
                                                                      style: AppStyle
                                                                          .textstyleamaranthregular101
                                                                          .copyWith(
                                                                        fontSize:
                                                                            getFontSize(
                                                                          10,
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ],
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
                                  ),
                              
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  height: getVerticalSize(
                    58.00,
                  ),
                  width: getHorizontalSize(
                    57.85,
                  ),
                  margin: EdgeInsets.only(
                    left: getHorizontalSize(
                      158.57,
                    ),
                    top: getVerticalSize(
                      50.00,
                    ),
                    right: getHorizontalSize(
                      158.57,
                    ),
                    bottom: getVerticalSize(
                      50.00,
                    ),
                  ),
                  child: FloatingActionButton(
                    backgroundColor: ColorConstant.blue400,
                    onPressed: () {},
                    child: Container(
                        height: getVerticalSize(
                          58.00,
                        ),
                        width: getHorizontalSize(
                          57.85,
                        ),
                        padding: EdgeInsets.all(
                          getSize(10),
                        ),
                        decoration: BoxDecoration(
                          color: ColorConstant.blue400,
                          borderRadius: BorderRadius.circular(
                            getHorizontalSize(
                              29.00,
                            ),
                          ),
                        ),
                        child: GestureDetector(
                          onTap: () {
                            if (this.QRCode.isEmpty == true) {
                              print("Add an new greenhouse !!");
                              Get.toNamed(AppRoutes.mobileScannerScreen);
                            } else {
                              CoolAlert.show(
                                  context: context,
                                  type: CoolAlertType.info,
                                  text: "You already match your green house");
                            }
                          },
                          child: Container(
                            height: getVerticalSize(
                              29.00,
                            ),
                            width: getHorizontalSize(
                              28.93,
                            ),
                            child: SvgPicture.asset(
                              ImageConstant.imgGroup5HomePage,
                            ),
                          ),
                        )),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void showAlert(BuildContext context) async {
    print("We are in other page");
    var data = this.dataInformation;

    final body = json.decode(data);
    var nameOfGrHou = body['nameOfGreenHouse'];
    var valueOfTemperature = body['valueOfTemperature'];
    var valueOfHumidity = body['valueOfHumidity'];

    this.nameOfGreenHouse = nameOfGrHou;
    this.valueOfTemp = valueOfTemperature.toString();
    this.valueOfHum = valueOfHumidity.toString();


    // var codeQRInsatance;
    // var urlSendMatchingGreenHouse =
    //     Uri.parse('http://37.59.204.222/api/greenHouse/matchTheGreenHouseAndUser/');

    // var urlSendForSomeInformationOfHomePage =
    //     Uri.parse('http://37.59.204.222/api/greenHouse/getInformationForHomePage/');


    // if (this.QRCode.isEmpty) {
    //   CoolAlert.show(
    //     context: context,
    //     type: CoolAlertType.warning,
    //     text: 'Click button + below to connect to your greenhouse !',
    //   );
    //   print(this.tokenOfUser);
    //   final prefs = await SharedPreferences.getInstance();
    //   prefs.setString("Token", this.tokenOfUser);
    // } else {
    //   Map<String, dynamic> payload = Jwt.parseJwt(this.QRCode);
    //   final prefs = await SharedPreferences.getInstance();
    //   var tokenId = prefs.getString("Token");

    //   print(tokenId);
    //   print(this.QRCode);

    //   var responseMatchingGreenHouse = await http
    //       .post(urlSendMatchingGreenHouse, body: {'tokenId': tokenId, 'payload': this.QRCode});

    //   if (responseMatchingGreenHouse.statusCode == 200) {
    //     // print(responseLoginUser.body);
    //     // Get.toNamed(AppRoutes.mapScreen);
    //     print(responseMatchingGreenHouse.body);
    //     final body = json.decode(responseMatchingGreenHouse.body);
    //     final String Result_Matching = body['Result_Matching'];
    //     print(Result_Matching);
    //     CoolAlert.show(
    //       context: context,
    //       type: CoolAlertType.success,
    //       text: Result_Matching,
    //       // autoCloseDuration: Duration(seconds: 2)
    //       );
    //   }

    //   var responseOfSomeInformationOfHomePage = await http
    //       .post(urlSendForSomeInformationOfHomePage, body: {'tokenId': tokenId, 'payload': this.QRCode});

    //     if(responseOfSomeInformationOfHomePage.statusCode == 200){
    //       print(responseOfSomeInformationOfHomePage.body);
    //       print(responseOfSomeInformationOfHomePage.body.runtimeType);
    //       final body2 = json.decode(responseOfSomeInformationOfHomePage.body);
    //       var nameOfGrHou = body2['nameOfGreenHouse'];
    //       var valueOfTemperature = body2['valueOfTemperature'];
    //       var valueOfHumidity = body2['valueOfHumidity'];

    //       nameOfGreenHouse = nameOfGrHou;
    //       valueOfTemp = valueOfTemperature.toString();
    //       valueOfHum = valueOfHumidity.toString();

          
    //     }
    // }
  }
}

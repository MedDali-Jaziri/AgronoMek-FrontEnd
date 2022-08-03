import 'package:agronomek_app/core/app_export.dart';
import 'package:agronomek_app/theme/app_style.dart';

import 'controller/onboarding_3_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Onboarding3Screen extends GetWidget<Onboarding3Controller> {
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
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              GestureDetector(
                                  onTap: () {
                                    onTapImgClose();
                                  },
                                  child: Padding(
                                      padding: EdgeInsets.only(
                                          left: getHorizontalSize(23.00),
                                          top: getVerticalSize(40.00),
                                          right: getHorizontalSize(23.00)),
                                      child: Image.asset(ImageConstant.imgClose,
                                          height: getSize(24.00),
                                          width: getSize(24.00),
                                          fit: BoxFit.fill))),
                              Align(
                                  alignment: Alignment.center,
                                  child: Container(
                                      height: getVerticalSize(272.14),
                                      width: getHorizontalSize(317.00),
                                      margin: EdgeInsets.only(
                                          left: getHorizontalSize(20.00),
                                          top: getVerticalSize(59.00),
                                          right: getHorizontalSize(20.00)),
                                      child: Stack(
                                          alignment: Alignment.topLeft,
                                          children: [
                                            Align(
                                                alignment:
                                                    Alignment.bottomCenter,
                                                child: Container(
                                                    height:
                                                        getVerticalSize(218.14),
                                                    width: getHorizontalSize(
                                                        255.00),
                                                    margin: EdgeInsets.only(
                                                        left: getHorizontalSize(
                                                            31.00),
                                                        top: getVerticalSize(
                                                            10.00),
                                                        right:
                                                            getHorizontalSize(
                                                                31.00)),
                                                    child: Stack(
                                                        alignment:
                                                            Alignment.center,
                                                        children: [
                                                          Align(
                                                              alignment: Alignment
                                                                  .bottomLeft,
                                                              child: Padding(
                                                                  padding: EdgeInsets.only(
                                                                      top: getVerticalSize(
                                                                          10.00)),
                                                                  child: Container(
                                                                      height: getVerticalSize(
                                                                          169.14),
                                                                      width: getHorizontalSize(
                                                                          255.00),
                                                                      child: SvgPicture.asset(
                                                                          ImageConstant
                                                                              .imgEllipse311,
                                                                          fit: BoxFit
                                                                              .fill)))),
                                                          Align(
                                                              alignment:
                                                                  Alignment
                                                                      .center,
                                                              child: Container(
                                                                  height:
                                                                      getVerticalSize(
                                                                          218.00),
                                                                  width:
                                                                      getHorizontalSize(
                                                                          246.54),
                                                                  margin: EdgeInsets.only(
                                                                      left: getHorizontalSize(
                                                                          0.50),
                                                                      right: getHorizontalSize(
                                                                          7.96),
                                                                      bottom: getVerticalSize(
                                                                          0.14)),
                                                                  child: Stack(
                                                                      alignment:
                                                                          Alignment
                                                                              .bottomLeft,
                                                                      children: [
                                                                        Align(
                                                                            alignment:
                                                                                Alignment.topLeft,
                                                                            child: Container(
                                                                                height: getVerticalSize(126.75),
                                                                                width: getHorizontalSize(102.98),
                                                                                margin: EdgeInsets.only(left: getHorizontalSize(63.01), right: getHorizontalSize(63.01), bottom: getVerticalSize(10.00)),
                                                                                child: Stack(alignment: Alignment.bottomRight, children: [
                                                                                  Align(alignment: Alignment.centerLeft, child: Container(height: getVerticalSize(126.75), width: getHorizontalSize(102.98), child: SvgPicture.asset(ImageConstant.imgVector18, fit: BoxFit.fill))),
                                                                                  Align(
                                                                                      alignment: Alignment.bottomRight,
                                                                                      child: Padding(
                                                                                          padding: EdgeInsets.only(left: getHorizontalSize(10.00), top: getVerticalSize(43.75), right: getHorizontalSize(3.99), bottom: getVerticalSize(43.75)),
                                                                                          child: Row(crossAxisAlignment: CrossAxisAlignment.start, mainAxisSize: MainAxisSize.min, children: [
                                                                                            Padding(padding: EdgeInsets.only(top: getVerticalSize(7.66)), child: Container(height: getVerticalSize(16.50), width: getHorizontalSize(9.00), child: SvgPicture.asset(ImageConstant.imgVector42, fit: BoxFit.fill))),
                                                                                            Padding(
                                                                                                padding: EdgeInsets.only(left: getHorizontalSize(1.50), bottom: getVerticalSize(15.00)),
                                                                                                child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.start, children: [
                                                                                                  Container(height: getVerticalSize(2.66), width: getHorizontalSize(9.00), child: SvgPicture.asset(ImageConstant.imgVector71, fit: BoxFit.fill)),
                                                                                                  Padding(padding: EdgeInsets.only(left: getHorizontalSize(2.50), top: getVerticalSize(3.00), right: getHorizontalSize(10.00)), child: Container(height: getVerticalSize(3.50), width: getHorizontalSize(3.00), child: SvgPicture.asset(ImageConstant.imgEllipse1, fit: BoxFit.fill)))
                                                                                                ]))
                                                                                          ])))
                                                                                ]))),
                                                                        Align(
                                                                            alignment:
                                                                                Alignment.bottomLeft,
                                                                            child: Container(
                                                                                height: getVerticalSize(132.13),
                                                                                width: getHorizontalSize(175.69),
                                                                                margin: EdgeInsets.only(top: getVerticalSize(10.00), right: getHorizontalSize(10.00)),
                                                                                child: Stack(alignment: Alignment.center, children: [
                                                                                  Align(alignment: Alignment.centerLeft, child: Container(height: getVerticalSize(132.13), width: getHorizontalSize(175.69), child: SvgPicture.asset(ImageConstant.imgVector19, fit: BoxFit.fill))),
                                                                                  Align(
                                                                                      alignment: Alignment.center,
                                                                                      child: Padding(
                                                                                          padding: EdgeInsets.only(left: getHorizontalSize(0.47), top: getVerticalSize(4.63), right: getHorizontalSize(3.62), bottom: getVerticalSize(9.47)),
                                                                                          child: Column(mainAxisSize: MainAxisSize.min, mainAxisAlignment: MainAxisAlignment.start, children: [
                                                                                            Align(alignment: Alignment.centerRight, child: Padding(padding: EdgeInsets.only(left: getHorizontalSize(29.07), right: getHorizontalSize(29.07)), child: Container(height: getVerticalSize(1.56), width: getHorizontalSize(8.50), child: SvgPicture.asset(ImageConstant.imgVector61, fit: BoxFit.fill)))),
                                                                                            Align(alignment: Alignment.centerRight, child: Padding(padding: EdgeInsets.only(left: getHorizontalSize(50.69), top: getVerticalSize(11.50), right: getHorizontalSize(50.69)), child: Container(height: getVerticalSize(14.75), width: getHorizontalSize(7.09), child: SvgPicture.asset(ImageConstant.imgVector32, fit: BoxFit.fill)))),
                                                                                            Align(
                                                                                                alignment: Alignment.center,
                                                                                                child: Container(
                                                                                                    height: getVerticalSize(14.89),
                                                                                                    width: getHorizontalSize(153.16),
                                                                                                    margin: EdgeInsets.only(left: getHorizontalSize(7.98), top: getVerticalSize(10.71), right: getHorizontalSize(10.46)),
                                                                                                    child: Stack(alignment: Alignment.centerRight, children: [
                                                                                                      Align(alignment: Alignment.bottomLeft, child: Padding(padding: EdgeInsets.only(top: getVerticalSize(10.00), right: getHorizontalSize(10.00)), child: Container(height: getVerticalSize(11.60), width: getHorizontalSize(38.01), child: SvgPicture.asset(ImageConstant.imgVector20, fit: BoxFit.fill)))),
                                                                                                      Align(alignment: Alignment.centerRight, child: Padding(padding: EdgeInsets.only(left: getHorizontalSize(10.00)), child: Container(height: getVerticalSize(14.89), width: getHorizontalSize(116.16), child: SvgPicture.asset(ImageConstant.imgVector21, fit: BoxFit.fill))))
                                                                                                    ]))),
                                                                                            Align(
                                                                                                alignment: Alignment.centerLeft,
                                                                                                child: Container(
                                                                                                    height: getVerticalSize(51.75),
                                                                                                    width: getHorizontalSize(171.60),
                                                                                                    margin: EdgeInsets.only(top: getVerticalSize(12.87)),
                                                                                                    child: Stack(alignment: Alignment.bottomLeft, children: [
                                                                                                      Align(alignment: Alignment.topLeft, child: Padding(padding: EdgeInsets.only(left: getHorizontalSize(0.81), top: getVerticalSize(8.45), right: getHorizontalSize(10.00), bottom: getVerticalSize(10.00)), child: Container(height: getVerticalSize(8.65), width: getHorizontalSize(47.59), child: SvgPicture.asset(ImageConstant.imgVector22, fit: BoxFit.fill)))),
                                                                                                      Align(alignment: Alignment.bottomLeft, child: Padding(padding: EdgeInsets.only(top: getVerticalSize(10.00), right: getHorizontalSize(10.00), bottom: getVerticalSize(2.41)), child: Container(height: getVerticalSize(10.66), width: getHorizontalSize(52.28), child: SvgPicture.asset(ImageConstant.imgVector23, fit: BoxFit.fill)))),
                                                                                                      Align(alignment: Alignment.topRight, child: Padding(padding: EdgeInsets.only(left: getHorizontalSize(10.00), top: getVerticalSize(5.57), right: getHorizontalSize(1.54), bottom: getVerticalSize(10.00)), child: Container(height: getVerticalSize(11.52), width: getHorizontalSize(119.18), child: SvgPicture.asset(ImageConstant.imgVector24, fit: BoxFit.fill)))),
                                                                                                      Align(alignment: Alignment.bottomRight, child: Padding(padding: EdgeInsets.only(left: getHorizontalSize(10.00), top: getVerticalSize(10.00), bottom: getVerticalSize(1.81)), child: Container(height: getVerticalSize(15.58), width: getHorizontalSize(116.70), child: SvgPicture.asset(ImageConstant.imgVector25, fit: BoxFit.fill)))),
                                                                                                      Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.only(left: getHorizontalSize(46.86), right: getHorizontalSize(46.86)), child: Container(height: getVerticalSize(51.75), width: getHorizontalSize(45.39), child: SvgPicture.asset(ImageConstant.imgVector26, fit: BoxFit.fill))))
                                                                                                    ])))
                                                                                          ])))
                                                                                ]))),
                                                                        Align(
                                                                            alignment:
                                                                                Alignment.bottomRight,
                                                                            child: Container(
                                                                                height: getVerticalSize(114.77),
                                                                                width: getHorizontalSize(118.51),
                                                                                margin: EdgeInsets.only(left: getHorizontalSize(10.00), top: getVerticalSize(10.00)),
                                                                                child: Stack(alignment: Alignment.topRight, children: [
                                                                                  Align(alignment: Alignment.centerLeft, child: Container(height: getVerticalSize(114.77), width: getHorizontalSize(118.51), child: SvgPicture.asset(ImageConstant.imgGroup3, fit: BoxFit.fill))),
                                                                                  Align(alignment: Alignment.topRight, child: Padding(padding: EdgeInsets.only(left: getHorizontalSize(34.51), top: getVerticalSize(24.65), right: getHorizontalSize(34.51), bottom: getVerticalSize(24.65)), child: Text("PLANT", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.textstyleamaranthbold10.copyWith(fontSize: getFontSize(10)))))
                                                                                ]))),
                                                                        Align(
                                                                            alignment:
                                                                                Alignment.bottomRight,
                                                                            child: Padding(padding: EdgeInsets.only(left: getHorizontalSize(59.04), top: getVerticalSize(10.00), right: getHorizontalSize(59.04)), child: Container(height: getVerticalSize(42.00), width: getHorizontalSize(70.00), child: SvgPicture.asset(ImageConstant.imgVector27, fit: BoxFit.fill)))),
                                                                        Align(
                                                                            alignment:
                                                                                Alignment.bottomLeft,
                                                                            child: Padding(padding: EdgeInsets.only(left: getHorizontalSize(92.61), top: getVerticalSize(10.00), right: getHorizontalSize(92.61)), child: Container(height: getVerticalSize(24.27), width: getHorizontalSize(34.02), child: SvgPicture.asset(ImageConstant.imgVector28, fit: BoxFit.fill)))),
                                                                        Align(
                                                                            alignment:
                                                                                Alignment.topLeft,
                                                                            child: Padding(padding: EdgeInsets.only(left: getHorizontalSize(101.89), top: getVerticalSize(83.79), right: getHorizontalSize(101.89), bottom: getVerticalSize(83.79)), child: Container(height: getVerticalSize(30.83), width: getHorizontalSize(19.42), child: SvgPicture.asset(ImageConstant.imgVector29, fit: BoxFit.fill)))),
                                                                        Align(
                                                                            alignment:
                                                                                Alignment.bottomRight,
                                                                            child: Padding(padding: EdgeInsets.only(left: getHorizontalSize(35.04), top: getVerticalSize(31.87), right: getHorizontalSize(35.04), bottom: getVerticalSize(31.87)), child: ClipRRect(borderRadius: BorderRadius.circular(getHorizontalSize(127.50)), child: Image.asset(ImageConstant.imgAgrinomeikremo2, height: getVerticalSize(47.13), width: getHorizontalSize(48.00), fit: BoxFit.fill))))
                                                                      ])))
                                                        ]))),
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
                                                                .center,
                                                        mainAxisSize:
                                                            MainAxisSize.min,
                                                        children: [
                                                          Padding(
                                                              padding: EdgeInsets.only(
                                                                  left:
                                                                      getHorizontalSize(
                                                                          12.00),
                                                                  top: getVerticalSize(
                                                                      25.00),
                                                                  bottom:
                                                                      getVerticalSize(
                                                                          18.02)),
                                                              child: Container(
                                                                  height:
                                                                      getVerticalSize(
                                                                          39.98),
                                                                  width:
                                                                      getHorizontalSize(
                                                                          33.00),
                                                                  child: SvgPicture.asset(
                                                                      ImageConstant
                                                                          .imgGroup4,
                                                                      fit: BoxFit
                                                                          .fill))),
                                                          Padding(
                                                              padding: EdgeInsets.only(
                                                                  left:
                                                                      getHorizontalSize(
                                                                          8.00),
                                                                  top: getVerticalSize(
                                                                      17.00),
                                                                  right:
                                                                      getHorizontalSize(
                                                                          12.00),
                                                                  bottom:
                                                                      getVerticalSize(
                                                                          19.00)),
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
                                                                                10.00)),
                                                                        child: Text(
                                                                            "Potato",
                                                                            overflow:
                                                                                TextOverflow.ellipsis,
                                                                            textAlign: TextAlign.left,
                                                                            style: AppStyle.textstyleamaranthbold10.copyWith(fontSize: getFontSize(10)))),
                                                                    Align(
                                                                        alignment:
                                                                            Alignment
                                                                                .centerRight,
                                                                        child: Container(
                                                                            height:
                                                                                getVerticalSize(1.00),
                                                                            width: getHorizontalSize(40.00),
                                                                            margin: EdgeInsets.only(left: getHorizontalSize(10.00), top: getVerticalSize(9.00)),
                                                                            decoration: BoxDecoration(color: ColorConstant.whiteA701, borderRadius: BorderRadius.circular(getHorizontalSize(0.50))))),
                                                                    Container(
                                                                        height: getVerticalSize(
                                                                            1.00),
                                                                        width: getHorizontalSize(
                                                                            51.00),
                                                                        margin: EdgeInsets.only(
                                                                            top: getVerticalSize(
                                                                                5.00)),
                                                                        decoration: BoxDecoration(
                                                                            color:
                                                                                ColorConstant.whiteA701,
                                                                            borderRadius: BorderRadius.circular(getHorizontalSize(0.50)))),
                                                                    Container(
                                                                        height: getVerticalSize(
                                                                            1.00),
                                                                        width: getHorizontalSize(
                                                                            51.00),
                                                                        margin: EdgeInsets.only(
                                                                            top: getVerticalSize(
                                                                                5.00)),
                                                                        decoration: BoxDecoration(
                                                                            color:
                                                                                ColorConstant.whiteA701,
                                                                            borderRadius: BorderRadius.circular(getHorizontalSize(0.50)))),
                                                                    Container(
                                                                        height: getVerticalSize(
                                                                            1.00),
                                                                        width: getHorizontalSize(
                                                                            51.00),
                                                                        margin: EdgeInsets.only(
                                                                            top: getVerticalSize(
                                                                                5.00)),
                                                                        decoration: BoxDecoration(
                                                                            color:
                                                                                ColorConstant.whiteA701,
                                                                            borderRadius: BorderRadius.circular(getHorizontalSize(0.50)))),
                                                                    Container(
                                                                        height: getVerticalSize(
                                                                            1.00),
                                                                        width: getHorizontalSize(
                                                                            51.00),
                                                                        margin: EdgeInsets.only(
                                                                            top: getVerticalSize(
                                                                                5.00)),
                                                                        decoration: BoxDecoration(
                                                                            color:
                                                                                ColorConstant.whiteA701,
                                                                            borderRadius: BorderRadius.circular(getHorizontalSize(0.50))))
                                                                  ]))
                                                        ]))),
                                            Align(
                                                alignment: Alignment.topRight,
                                                child: Container(
                                                    margin: EdgeInsets.only(
                                                        left: getHorizontalSize(
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
                                                                .center,
                                                        mainAxisSize:
                                                            MainAxisSize.min,
                                                        children: [
                                                          Padding(
                                                              padding: EdgeInsets.only(
                                                                  left:
                                                                      getHorizontalSize(
                                                                          12.00),
                                                                  top: getVerticalSize(
                                                                      26.00),
                                                                  bottom:
                                                                      getVerticalSize(
                                                                          18.32)),
                                                              child: Container(
                                                                  height:
                                                                      getVerticalSize(
                                                                          38.68),
                                                                  width:
                                                                      getHorizontalSize(
                                                                          33.00),
                                                                  child: SvgPicture.asset(
                                                                      ImageConstant
                                                                          .imgGroup5,
                                                                      fit: BoxFit
                                                                          .fill))),
                                                          Padding(
                                                              padding: EdgeInsets.only(
                                                                  left:
                                                                      getHorizontalSize(
                                                                          8.00),
                                                                  top: getVerticalSize(
                                                                      17.00),
                                                                  right:
                                                                      getHorizontalSize(
                                                                          12.00),
                                                                  bottom:
                                                                      getVerticalSize(
                                                                          19.00)),
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
                                                                                10.00)),
                                                                        child: Text(
                                                                            "Pepper",
                                                                            overflow:
                                                                                TextOverflow.ellipsis,
                                                                            textAlign: TextAlign.left,
                                                                            style: AppStyle.textstyleamaranthbold10.copyWith(fontSize: getFontSize(10)))),
                                                                    Align(
                                                                        alignment:
                                                                            Alignment
                                                                                .centerRight,
                                                                        child: Container(
                                                                            height:
                                                                                getVerticalSize(1.00),
                                                                            width: getHorizontalSize(40.00),
                                                                            margin: EdgeInsets.only(left: getHorizontalSize(10.00), top: getVerticalSize(9.00)),
                                                                            decoration: BoxDecoration(color: ColorConstant.whiteA701, borderRadius: BorderRadius.circular(getHorizontalSize(0.50))))),
                                                                    Container(
                                                                        height: getVerticalSize(
                                                                            1.00),
                                                                        width: getHorizontalSize(
                                                                            51.00),
                                                                        margin: EdgeInsets.only(
                                                                            top: getVerticalSize(
                                                                                5.00)),
                                                                        decoration: BoxDecoration(
                                                                            color:
                                                                                ColorConstant.whiteA701,
                                                                            borderRadius: BorderRadius.circular(getHorizontalSize(0.50)))),
                                                                    Container(
                                                                        height: getVerticalSize(
                                                                            1.00),
                                                                        width: getHorizontalSize(
                                                                            51.00),
                                                                        margin: EdgeInsets.only(
                                                                            top: getVerticalSize(
                                                                                5.00)),
                                                                        decoration: BoxDecoration(
                                                                            color:
                                                                                ColorConstant.whiteA701,
                                                                            borderRadius: BorderRadius.circular(getHorizontalSize(0.50)))),
                                                                    Container(
                                                                        height: getVerticalSize(
                                                                            1.00),
                                                                        width: getHorizontalSize(
                                                                            51.00),
                                                                        margin: EdgeInsets.only(
                                                                            top: getVerticalSize(
                                                                                5.00)),
                                                                        decoration: BoxDecoration(
                                                                            color:
                                                                                ColorConstant.whiteA701,
                                                                            borderRadius: BorderRadius.circular(getHorizontalSize(0.50)))),
                                                                    Container(
                                                                        height: getVerticalSize(
                                                                            1.00),
                                                                        width: getHorizontalSize(
                                                                            51.00),
                                                                        margin: EdgeInsets.only(
                                                                            top: getVerticalSize(
                                                                                5.00)),
                                                                        decoration: BoxDecoration(
                                                                            color:
                                                                                ColorConstant.whiteA701,
                                                                            borderRadius: BorderRadius.circular(getHorizontalSize(0.50))))
                                                                  ]))
                                                        ]))),
                                            Align(
                                                alignment: Alignment.topCenter,
                                                child: Padding(
                                                    padding: EdgeInsets.only(
                                                        left: getHorizontalSize(
                                                            120.00),
                                                        top: getVerticalSize(
                                                            53.00),
                                                        right:
                                                            getHorizontalSize(
                                                                120.00),
                                                        bottom: getVerticalSize(
                                                            53.00)),
                                                    child: Container(
                                                        height: getVerticalSize(
                                                            60.00),
                                                        width:
                                                            getHorizontalSize(
                                                                77.00),
                                                        child: SvgPicture.asset(
                                                            ImageConstant
                                                                .imgFrame1,
                                                            fit:
                                                                BoxFit.fill)))),
                                            Align(
                                                alignment: Alignment.topRight,
                                                child: Container(
                                                    height: getSize(4.00),
                                                    width: getSize(4.00),
                                                    margin: EdgeInsets.only(
                                                        left: getHorizontalSize(
                                                            146.00),
                                                        top: getVerticalSize(
                                                            110.00),
                                                        right:
                                                            getHorizontalSize(
                                                                146.00),
                                                        bottom: getVerticalSize(
                                                            110.00)),
                                                    decoration: BoxDecoration(
                                                        color: ColorConstant
                                                            .black900,
                                                        borderRadius:
                                                            BorderRadius.circular(
                                                                getHorizontalSize(
                                                                    2.00)))))
                                          ]))),
                              Padding(
                                  padding: EdgeInsets.only(
                                      left: getHorizontalSize(36.00),
                                      top: getVerticalSize(64.86),
                                      right: getHorizontalSize(36.00)),
                                  child: Text("Read Many Articles About Plant",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.textstyleamaranthbold19
                                          .copyWith(
                                              fontSize: getFontSize(19)))),
                              Align(
                                  alignment: Alignment.center,
                                  child: Container(
                                      width: getHorizontalSize(335.00),
                                      margin: EdgeInsets.only(
                                          left: getHorizontalSize(20.00),
                                          top: getVerticalSize(23.00),
                                          right: getHorizontalSize(20.00)),
                                      child: Text("Let's learn more about beautiful plants and read \nmany articles about plants and gardening",
                                          maxLines: null,
                                          textAlign: TextAlign.center,
                                          style: AppStyle
                                              .textstyleamaranthregular13
                                              .copyWith(
                                                  fontSize: getFontSize(13))))),
                              Padding(
                                  padding: EdgeInsets.only(
                                      top: getVerticalSize(54.00)),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Container(
                                            height: getSize(7.00),
                                            width: getSize(7.00),
                                            decoration: BoxDecoration(
                                                color: ColorConstant.gray300,
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        getHorizontalSize(
                                                            3.50)))),
                                        Container(
                                            height: getSize(7.00),
                                            width: getSize(7.00),
                                            margin: EdgeInsets.only(
                                                left: getHorizontalSize(9.00)),
                                            decoration: BoxDecoration(
                                                color: ColorConstant.gray300,
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        getHorizontalSize(
                                                            3.50)))),
                                        Container(
                                            height: getSize(7.00),
                                            width: getSize(7.00),
                                            margin: EdgeInsets.only(
                                                left: getHorizontalSize(9.00)),
                                            decoration: BoxDecoration(
                                                color: ColorConstant.tealA400,
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        getHorizontalSize(
                                                            3.50))))
                                      ])),
                              Align(
                                  alignment: Alignment.center,
                                  child: Padding(
                                      padding: EdgeInsets.only(
                                          left: getHorizontalSize(20.00),
                                          top: getVerticalSize(23.00),
                                          right: getHorizontalSize(20.00)),
                                      child: GestureDetector(
                                          onTap: () {
                                            onTapBtnSignin();
                                          },
                                          child: Container(
                                              alignment: Alignment.center,
                                              height: getVerticalSize(50.00),
                                              width: size.width,
                                              decoration: AppDecoration
                                                  .textstyleamaranthbold15,
                                              child: Text("SIGN IN",
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .textstyleamaranthbold15
                                                      .copyWith(
                                                          fontSize: getFontSize(
                                                              15))))))),
                              Align(
                                  alignment: Alignment.center,
                                  child: Padding(
                                      padding: EdgeInsets.only(
                                          left: getHorizontalSize(20.00),
                                          top: getVerticalSize(23.00),
                                          right: getHorizontalSize(19.00),
                                          bottom: getVerticalSize(20.00)),
                                      child: GestureDetector(
                                          onTap: () {
                                            onTapBtnSignup();
                                          },
                                          child: Container(
                                              alignment: Alignment.center,
                                              height: getVerticalSize(50.00),
                                              width: size.width,
                                              decoration: AppDecoration
                                                  .textstyleamaranthbold15,
                                              child: Text("SIGN UP",
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .textstyleamaranthbold15
                                                      .copyWith(
                                                          fontSize: getFontSize(
                                                              15)))))))
                            ]))))));
  }

  onTapImgClose() {
    // TODO: implement Actions
    Get.toNamed(AppRoutes.boarding2Screen);
  }
  onTapBtnSignin() {
    // TODO: implement Actions
    print("Sign IN");
    Get.toNamed(AppRoutes.loginScreen);
  }
  onTapBtnSignup() {
    // TODO: implement Actions
    print("Sign UP");
    Get.toNamed(AppRoutes.signupScreen);
  }
}

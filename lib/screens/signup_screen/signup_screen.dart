import 'dart:io';

import 'package:agronomek_app/core/app_export.dart';
import 'package:agronomek_app/screens/login_screen/login_screen.dart';
import 'package:agronomek_app/theme/app_style.dart';
import 'package:cool_alert/cool_alert.dart';
import 'package:flutter/services.dart';
import 'package:geocoding/geocoding.dart';

import 'controller/signup_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:http/http.dart' as http;
import 'package:geolocator/geolocator.dart';
import 'package:image_picker/image_picker.dart';
import 'package:http_parser/http_parser.dart';
import 'package:google_sign_in/google_sign_in.dart';

final GoogleSignIn _googleSignIn = GoogleSignIn(scopes: ['email']);

// ignore_for_file: must_be_immutable
class SignupScreen extends GetWidget<SignupController> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  GoogleSignInAccount? _currentUser;
  var obscureValue = true;

  // var CountryGlobal= "";
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: Form(
                key: _formKey,
                child: SingleChildScrollView(
                    child: Container(
                        decoration:
                            BoxDecoration(color: ColorConstant.whiteA700),
                        child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Container(
                                      width: double.infinity,
                                      margin: EdgeInsets.only(
                                          top: getVerticalSize(25.00)),
                                      decoration: BoxDecoration(
                                          color: ColorConstant.whiteA700),
                                      child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            Column(
                                                mainAxisSize: MainAxisSize.min,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Align(
                                                      alignment:
                                                          Alignment.centerLeft,
                                                      child: Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .start,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            Padding(
                                                                padding: EdgeInsets.only(
                                                                    left: getHorizontalSize(
                                                                        23.00),
                                                                    top: getVerticalSize(
                                                                        17.10),
                                                                    bottom: getVerticalSize(
                                                                        195.10)),
                                                                child:
                                                                    GestureDetector(
                                                                  onTap: (() {
                                                                    print(
                                                                        "Previous pages");
                                                                    Get.toNamed(
                                                                        AppRoutes
                                                                            .boarding3Screen);
                                                                  }),
                                                                  child: Container(
                                                                      height: getVerticalSize(
                                                                          19.80),
                                                                      width: getHorizontalSize(
                                                                          11.67),
                                                                      child: SvgPicture.asset(
                                                                          ImageConstant
                                                                              .imgVector64,
                                                                          fit: BoxFit
                                                                              .fill)),
                                                                )),
                                                            Container(
                                                                height:
                                                                    getVerticalSize(
                                                                        232.00),
                                                                width:
                                                                    getHorizontalSize(
                                                                        211.00),
                                                                margin: EdgeInsets.only(
                                                                    left: getHorizontalSize(
                                                                        47.33),
                                                                    right: getHorizontalSize(
                                                                        82.00)),
                                                                child: Stack(
                                                                    alignment:
                                                                        Alignment
                                                                            .bottomRight,
                                                                    children: [
                                                                      Align(
                                                                          alignment:
                                                                              Alignment.centerLeft,
                                                                          child: Container(
                                                                              height: getVerticalSize(230.00),
                                                                              width: getHorizontalSize(211.00),
                                                                              margin: EdgeInsets.only(bottom: getVerticalSize(2.00)),
                                                                              child: Stack(alignment: Alignment.centerRight, children: [
                                                                                Align(alignment: Alignment.centerLeft, child: Image.asset(ImageConstant.imgRegister1, height: getVerticalSize(230.00), width: getHorizontalSize(211.00), fit: BoxFit.fill)),
                                                                                Align(alignment: Alignment.centerRight, child: Padding(padding: EdgeInsets.only(left: getHorizontalSize(28.00), top: getVerticalSize(97.00), right: getHorizontalSize(28.00), bottom: getVerticalSize(97.00)), child: Image.asset(ImageConstant.imgAgrinomeikremo4, height: getVerticalSize(35.00), width: getHorizontalSize(29.00), fit: BoxFit.fill)))
                                                                              ]))),
                                                                      Align(
                                                                          alignment: Alignment
                                                                              .bottomRight,
                                                                          child: Padding(
                                                                              padding: EdgeInsets.only(left: getHorizontalSize(50.00), top: getVerticalSize(10.00), right: getHorizontalSize(50.00)),
                                                                              child: Text("AgronoMek", 
                                                                              overflow: TextOverflow.ellipsis, 
                                                                              textAlign: TextAlign.center, 
                                                                              style: AppStyle.textstyleamaranthbold20.copyWith(fontSize: getFontSize(20)))
                                                                              
                                                                              ))
                                                                    ]))
                                                          ])),
                                                  Align(
                                                      alignment:
                                                          Alignment.centerLeft,
                                                      child: Padding(
                                                          padding: EdgeInsets.only(
                                                              left:
                                                                  getHorizontalSize(
                                                                      23.00),
                                                              top: getVerticalSize(
                                                                  5.00),
                                                              right:
                                                                  getHorizontalSize(
                                                                      23.00)),
                                                          child: Text("Email",
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .textstyleamaranthregular16
                                                                  .copyWith(
                                                                      fontSize:
                                                                          getFontSize(16))))),
                                                  Padding(
                                                      padding: EdgeInsets.only(
                                                          left: getHorizontalSize(
                                                              21.00),
                                                          top: getVerticalSize(
                                                              3.00),
                                                          right: getHorizontalSize(
                                                              21.00)),
                                                      child: Container(
                                                          height: getVerticalSize(
                                                              27.00),
                                                          width:
                                                              getHorizontalSize(
                                                                  269.00),
                                                          child: TextFormField(
                                                              focusNode:
                                                                  FocusNode(),
                                                              validator:
                                                                  (value) {
                                                                if (value ==
                                                                        null ||
                                                                    (!isValidEmail(
                                                                        value,
                                                                        isRequired:
                                                                            true))) {
                                                                  return "Please enter valid email";
                                                                }
                                                                return null;
                                                              },
                                                              keyboardType:
                                                                  TextInputType
                                                                      .emailAddress,
                                                              controller: controller
                                                                  .enteryourEmaiController,
                                                              decoration: InputDecoration(
                                                                  hintText:
                                                                      "Enter your Email address",
                                                                  hintStyle: AppStyle.textstyleamaranthregular16.copyWith(
                                                                      fontSize:
                                                                          getFontSize(
                                                                              16.0),
                                                                      color: ColorConstant
                                                                          .gray60090),
                                                                  enabledBorder:
                                                                      UnderlineInputBorder(
                                                                          borderSide: BorderSide(color: ColorConstant.tealA400)),
                                                                  focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: ColorConstant.tealA400)),
                                                                  disabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: ColorConstant.tealA400)),
                                                                  prefixIcon: Container(margin: EdgeInsets.only(left: getHorizontalSize(2.00), top: getVerticalSize(3.15), right: getHorizontalSize(8.00), bottom: getVerticalSize(10.15)), child: Container(height: getSize(13.70), width: getSize(20.00), child: SvgPicture.asset(ImageConstant.imgVector65, fit: BoxFit.fill))),
                                                                  prefixIconConstraints: BoxConstraints(minWidth: getSize(13.70), minHeight: getSize(13.70)),
                                                                  isDense: true,
                                                                  contentPadding: EdgeInsets.only(right: getHorizontalSize(30.00), bottom: getVerticalSize(7.00))),
                                                              style: TextStyle(color: ColorConstant.gray60090, fontSize: getFontSize(16.0), fontFamily: 'Amaranth', fontWeight: FontWeight.w400))
                                                              
                                                              )),
                                                  Align(
                                                      alignment:
                                                          Alignment.centerLeft,
                                                      child: Padding(
                                                          padding: EdgeInsets.only(
                                                              left:
                                                                  getHorizontalSize(
                                                                      23.00),
                                                              top: getVerticalSize(
                                                                  10.00),
                                                              right:
                                                                  getHorizontalSize(
                                                                      23.00)),
                                                          child: Text("UserName",
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .textstyleamaranthregular16
                                                                  .copyWith(
                                                                      fontSize:
                                                                          getFontSize(16))))),
                                                  Padding(
                                                      padding: EdgeInsets.only(
                                                          left: getHorizontalSize(
                                                              21.00),
                                                          top: getVerticalSize(
                                                              5.00),
                                                          right: getHorizontalSize(
                                                              21.00)),
                                                      child: Container(
                                                          height: getVerticalSize(
                                                              27.00),
                                                          width: getHorizontalSize(
                                                              269.00),
                                                          child: TextFormField(
                                                              focusNode:
                                                                  FocusNode(),
                                                              validator:
                                                                  (value) {
                                                                if (value ==
                                                                        null ||
                                                                    (!isText(
                                                                        value,
                                                                        isRequired:
                                                                            true))) {
                                                                  return "Please enter valid text";
                                                                }
                                                                return null;
                                                              },
                                                              keyboardType:
                                                                  TextInputType
                                                                      .text,
                                                              controller: controller
                                                                  .enteryouruserController,
                                                              decoration: InputDecoration(
                                                                  hintText:
                                                                      "Enter your user name",
                                                                  hintStyle: AppStyle
                                                                      .textstyleamaranthregular16
                                                                      .copyWith(
                                                                          fontSize: getFontSize(
                                                                              16.0),
                                                                          color: ColorConstant
                                                                              .gray60090),
                                                                  enabledBorder:
                                                                      UnderlineInputBorder(
                                                                          borderSide: BorderSide(color: ColorConstant.tealA400)),
                                                                  focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: ColorConstant.tealA400)),
                                                                  disabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: ColorConstant.tealA400)),
                                                                  prefixIcon: Container(margin: EdgeInsets.only(right: getHorizontalSize(10.00), bottom: getVerticalSize(7.00)), child: Container(height: getSize(20.00), width: getSize(20.00), child: SvgPicture.asset(ImageConstant.imgUser1, fit: BoxFit.fill))),
                                                                  prefixIconConstraints: BoxConstraints(minWidth: getSize(20.00), minHeight: getSize(20.00)),
                                                                  isDense: true,
                                                                  contentPadding: EdgeInsets.only(right: getHorizontalSize(30.00), bottom: getVerticalSize(7.00))),
                                                              style: TextStyle(color: ColorConstant.gray60090, fontSize: getFontSize(16.0), fontFamily: 'Amaranth', fontWeight: FontWeight.w400)))),
                                                  Align(
                                                      alignment:
                                                          Alignment.centerLeft,
                                                      child: Padding(
                                                          padding: EdgeInsets.only(
                                                              left:
                                                                  getHorizontalSize(
                                                                      22.00),
                                                              top: getVerticalSize(
                                                                  12.00),
                                                              right:
                                                                  getHorizontalSize(
                                                                      22.00)),
                                                          child: Text("Password",
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .textstyleamaranthregular16
                                                                  .copyWith(
                                                                      fontSize:
                                                                          getFontSize(16))))),
                                                  Align(
                                                      alignment:
                                                          Alignment.center,
                                                      child: Container(
                                                          height:
                                                              getVerticalSize(
                                                                  27.00),
                                                          width:
                                                              getHorizontalSize(
                                                                  278.00),
                                                          margin: EdgeInsets.only(
                                                              left:
                                                                  getHorizontalSize(
                                                                      21.00),
                                                              top:
                                                                  getVerticalSize(
                                                                      5.00),
                                                              right:
                                                                  getHorizontalSize(
                                                                      21.00)),
                                                          child: Stack(
                                                              alignment:
                                                                  Alignment
                                                                      .topRight,
                                                              children: [
                                                                Padding(
                                                                    padding: EdgeInsets.only(
                                                                        right: getHorizontalSize(
                                                                            9.00)),
                                                                    child: Container(
                                                                        height: getVerticalSize(27.00),
                                                                        width: getHorizontalSize(269.00),
                                                                        child: TextFormField(
                                                                            focusNode: FocusNode(),
                                                                            validator: (value) {
                                                                              if (value == null || (!isValidPassword(value, isRequired: true))) {
                                                                                return "Please enter valid password";
                                                                              }
                                                                              return null;
                                                                            },
                                                                            keyboardType: TextInputType.visiblePassword,
                                                                            controller: controller.enteryourPassController,
                                                                            obscureText: obscureValue,
                                                                            decoration: InputDecoration(hintText: "Enter your Password", hintStyle: AppStyle.textstyleamaranthregular16.copyWith(fontSize: getFontSize(16.0), color: ColorConstant.gray60090), enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: ColorConstant.tealA400)), focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: ColorConstant.tealA400)), disabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: ColorConstant.tealA400)), prefixIcon: Container(margin: EdgeInsets.only(right: getHorizontalSize(11.00), bottom: getVerticalSize(7.00)), child: Container(height: getSize(20.00), width: getSize(20.00), child: SvgPicture.asset(ImageConstant.imgGroup361, fit: BoxFit.fill))), prefixIconConstraints: BoxConstraints(minWidth: getSize(20.00), minHeight: getSize(20.00)), isDense: true, contentPadding: EdgeInsets.only(right: getHorizontalSize(30.00), bottom: getVerticalSize(7.00))),
                                                                            style: TextStyle(color: ColorConstant.gray60090, fontSize: getFontSize(16.0), fontFamily: 'Amaranth', fontWeight: FontWeight.w400)))),
                                                                Align(
                                                                    alignment:
                                                                        Alignment
                                                                            .topRight,
                                                                    child: Padding(
                                                                        padding: EdgeInsets.only(left: getHorizontalSize(10.00), bottom: getVerticalSize(10.00)),
                                                                        child: GestureDetector(
                                                                          onTap:
                                                                              () {
                                                                            if (this.controller.enteryourPassController.text !=
                                                                                "") {
                                                                              print("Show password !!!!");
                                                                              print(this.controller.enteryourPassController);
                                                                              obscureValue = false;
                                                                              CoolAlert.show(context: context, type: CoolAlertType.info, text: "Your password: " + this.controller.enteryourPassController.text);
                                                                            }
                                                                            // this.controller.enteryourEmaiController.
                                                                          },
                                                                          child: Image.asset(
                                                                              ImageConstant.imgClosedeye1,
                                                                              height: getVerticalSize(21.00),
                                                                              width: getHorizontalSize(45.00),
                                                                              fit: BoxFit.fill),
                                                                        )))
                                                              ]))),
                                                  Align(
                                                      alignment:
                                                          Alignment.centerLeft,
                                                      child: Padding(
                                                          padding: EdgeInsets.only(
                                                              left:
                                                                  getHorizontalSize(
                                                                      23.00),
                                                              top: getVerticalSize(
                                                                  16.00),
                                                              right:
                                                                  getHorizontalSize(
                                                                      23.00)),
                                                          child: Text(
                                                              "Confirm Password",
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .textstyleamaranthregular16
                                                                  .copyWith(
                                                                      fontSize:
                                                                          getFontSize(16))))),
                                                  Align(
                                                      alignment:
                                                          Alignment.center,
                                                      child: Container(
                                                          height:
                                                              getVerticalSize(
                                                                  29.00),
                                                          width:
                                                              getHorizontalSize(
                                                                  277.00),
                                                          margin: EdgeInsets.only(
                                                              left:
                                                                  getHorizontalSize(
                                                                      21.00),
                                                              top:
                                                                  getVerticalSize(
                                                                      6.00),
                                                              right:
                                                                  getHorizontalSize(
                                                                      21.00)),
                                                          child: Stack(
                                                              alignment:
                                                                  Alignment
                                                                      .topRight,
                                                              children: [
                                                                Padding(
                                                                    padding: EdgeInsets.only(
                                                                        right: getHorizontalSize(
                                                                            8.00)),
                                                                    child: Container(
                                                                        height: getVerticalSize(29.00),
                                                                        width: getHorizontalSize(269.00),
                                                                        child: TextFormField(
                                                                            focusNode: FocusNode(),
                                                                            validator: (value) {
                                                                              if (value == null || (!isValidPassword(value, isRequired: true))) {
                                                                                return "Please enter valid password";
                                                                              }
                                                                              return null;
                                                                            },
                                                                            keyboardType: TextInputType.visiblePassword,
                                                                            controller: controller.enteryourPassController1,
                                                                            obscureText: true,
                                                                            decoration: InputDecoration(hintText: "Enter your Password", hintStyle: AppStyle.textstyleamaranthregular16.copyWith(fontSize: getFontSize(16.0), color: ColorConstant.gray60090), enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: ColorConstant.tealA400)), focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: ColorConstant.tealA400)), disabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: ColorConstant.tealA400)), prefixIcon: Container(margin: EdgeInsets.only(left: getHorizontalSize(1.00), right: getHorizontalSize(9.00), bottom: getVerticalSize(9.00)), child: Container(height: getSize(20.00), width: getSize(20.00), child: SvgPicture.asset(ImageConstant.imgGroup37, fit: BoxFit.fill))), prefixIconConstraints: BoxConstraints(minWidth: getSize(20.00), minHeight: getSize(20.00)), isDense: true, contentPadding: EdgeInsets.only(top: getVerticalSize(2.00), right: getHorizontalSize(30.00), bottom: getVerticalSize(7.00))),
                                                                            style: TextStyle(color: ColorConstant.gray60090, fontSize: getFontSize(16.0), fontFamily: 'Amaranth', fontWeight: FontWeight.w400)))),
                                                                Align(
                                                                    alignment:
                                                                        Alignment
                                                                            .topRight,
                                                                    child:
                                                                        Padding(
                                                                      padding: EdgeInsets.only(
                                                                          left: getHorizontalSize(
                                                                              10.00),
                                                                          top: getVerticalSize(
                                                                              3.00),
                                                                          bottom:
                                                                              getVerticalSize(10.00)),

                                                                      // child: Image.asset(
                                                                      //     ImageConstant
                                                                      //         .imgClosedeye2,
                                                                      //     height:
                                                                      //         getVerticalSize(21.00),
                                                                      //     width: getHorizontalSize(45.00),
                                                                      //     fit: BoxFit.fill)

                                                                      child: GestureDetector(
                                                                          onTap: () {
                                                                            if (this.controller.enteryourPassController1 !=
                                                                                "") {
                                                                              CoolAlert.show(context: context, type: CoolAlertType.info, text: "You confirmation password: " + this.controller.enteryourPassController1.text);
                                                                            }
                                                                          },
                                                                          child: Image.asset(ImageConstant.imgClosedeye2, height: getVerticalSize(21.00), width: getHorizontalSize(45.00), fit: BoxFit.fill)),
                                                                    ))
                                                              ]))),
                                                  Align(
                                                      alignment:
                                                          Alignment.center,
                                                      child: Padding(
                                                          padding: EdgeInsets.only(
                                                              left:
                                                                  getHorizontalSize(
                                                                      21.00),
                                                              top: getVerticalSize(
                                                                  14.00),
                                                              right:
                                                                  getHorizontalSize(
                                                                      21.00)),
                                                          child:
                                                              GestureDetector(
                                                                  onTap: () {
                                                                    onTapBtnSignup(
                                                                        context);
                                                                  },
                                                                  child: Container(
                                                                      alignment:
                                                                          Alignment
                                                                              .center,
                                                                      height: getVerticalSize(
                                                                          50.00),
                                                                      width: size
                                                                          .width,
                                                                      decoration:
                                                                          AppDecoration
                                                                              .textstyleamaranthbold15,
                                                                      child: Text(
                                                                          "Sign up",
                                                                          textAlign: TextAlign
                                                                              .left,
                                                                          style: AppStyle
                                                                              .textstyleamaranthbold15
                                                                              .copyWith(fontSize: getFontSize(15))))))),
                                                  Align(
                                                      alignment:
                                                          Alignment.centerRight,
                                                      child: Padding(
                                                          padding: EdgeInsets.only(
                                                              left:
                                                                  getHorizontalSize(
                                                                      108.00),
                                                              top: getVerticalSize(
                                                                  20.00),
                                                              right:
                                                                  getHorizontalSize(
                                                                      108.00)),
                                                          child: Text(
                                                              "Or continue with",
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .textstyleamaranthregular161
                                                                  .copyWith(
                                                                      fontSize:
                                                                          getFontSize(16))))),
                                                  Align(
                                                      alignment:
                                                          Alignment.centerLeft,
                                                      child: Padding(
                                                          padding: EdgeInsets.only(
                                                              top:
                                                                  getVerticalSize(
                                                                      17.00)),
                                                          child: Row(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .spaceEvenly,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .center,
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                Container(
                                                                    height:
                                                                        getVerticalSize(
                                                                            48.00),
                                                                    width: getHorizontalSize(
                                                                        169.00),
                                                                    child: Stack(
                                                                        alignment:
                                                                            Alignment.center,
                                                                        children: [
                                                                          Align(
                                                                              alignment: Alignment.centerLeft,
                                                                              child: GestureDetector(
                                                                                  onTap: () {
                                                                                    onTapImgContinuewithG();
                                                                                  },
                                                                                  child: ClipRRect(borderRadius: BorderRadius.circular(getHorizontalSize(21.00)), child: Container(height: getVerticalSize(48.00), width: getHorizontalSize(169.00), child: SvgPicture.asset(ImageConstant.imgContinuewithg, fit: BoxFit.fill))))),
                                                                          Align(
                                                                              alignment: Alignment.center,
                                                                              child: Padding(
                                                                                  padding: EdgeInsets.only(left: getHorizontalSize(0.00), top: getVerticalSize(15.00), right: getHorizontalSize(5.00), bottom: getVerticalSize(14.00)),
                                                                                  child: Row(crossAxisAlignment: CrossAxisAlignment.center, mainAxisSize: MainAxisSize.max, children: [
                                                                                    Padding(padding: EdgeInsets.only(top: getVerticalSize(2.00)), child: Container(height: getVerticalSize(15.00), width: getHorizontalSize(16.00), child: SvgPicture.asset(ImageConstant.imgLogogoogleg48, fit: BoxFit.fill))),
                                                                                    Padding(padding: EdgeInsets.only(left: getHorizontalSize(5.00)), child: Text("Continue with Google", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.textstyleamaranthregular15.copyWith(fontSize: getFontSize(15))))
                                                                                  ])))
                                                                        ])),
                                                                GestureDetector(
                                                                    onTap: () {
                                                                      onTapTxtContinuewithA();
                                                                    },
                                                                    child: Container(
                                                                        decoration: BoxDecoration(color: ColorConstant.black900, borderRadius: BorderRadius.circular(getHorizontalSize(21.00))),
                                                                        child: Row(crossAxisAlignment: CrossAxisAlignment.center, mainAxisSize: MainAxisSize.min, children: [
                                                                          Padding(
                                                                              padding: EdgeInsets.only(left: getHorizontalSize(2.00), top: getVerticalSize(14.00), bottom: getVerticalSize(14.00)),
                                                                              child: Container(height: getVerticalSize(20.00), width: getHorizontalSize(17.00), child: SvgPicture.asset(ImageConstant.imgPath4, fit: BoxFit.fill))),
                                                                          Padding(
                                                                              padding: EdgeInsets.only(left: getHorizontalSize(6.00), top: getVerticalSize(16.00), right: getHorizontalSize(4.00), bottom: getVerticalSize(12.00)),
                                                                              child: Text("Continue with Apple", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.textstyleamaranthregular162.copyWith(fontSize: getFontSize(16))))
                                                                        ])))
                                                              ]))),
                                                  Align(
                                                      alignment:
                                                          Alignment.center,
                                                      child: Container(
                                                          margin: EdgeInsets.only(
                                                              left:
                                                                  getHorizontalSize(
                                                                      21.00),
                                                              top: getVerticalSize(
                                                                  18.00),
                                                              right:
                                                                  getHorizontalSize(
                                                                      21.00)),
                                                          decoration:
                                                              BoxDecoration(
                                                            color: ColorConstant
                                                                .blueA400,
                                                            borderRadius:
                                                                BorderRadius.circular(
                                                                    getHorizontalSize(
                                                                        21.00)),
                                                          ),
                                                          child: Row(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .center,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .center,
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                Padding(
                                                                    padding: EdgeInsets.only(
                                                                        top: getVerticalSize(
                                                                            14.00),
                                                                        bottom: getVerticalSize(
                                                                            14.00)),
                                                                    child: Container(
                                                                        height: getSize(
                                                                            20.00),
                                                                        width: getSize(
                                                                            20.00),
                                                                        child: SvgPicture.asset(
                                                                            ImageConstant
                                                                                .imgPath14,
                                                                            fit:
                                                                                BoxFit.fill))),
                                                                GestureDetector(
                                                                    onTap: () {
                                                                      onTapTxtContinuewithf();
                                                                    },
                                                                    child: Padding(
                                                                        padding: EdgeInsets.only(
                                                                            left: getHorizontalSize(
                                                                                4.50),
                                                                            top: getVerticalSize(
                                                                                14.00),
                                                                            bottom: getVerticalSize(
                                                                                14.00)),
                                                                        child: Text(
                                                                            "Continue with Facebook",
                                                                            overflow:
                                                                                TextOverflow.ellipsis,
                                                                            textAlign: TextAlign.center,
                                                                            style: AppStyle.textstyleamaranthregular162.copyWith(fontSize: getFontSize(16)))))
                                                              ])))
                                                ]),
                                            Container(
                                                width: double.infinity,
                                                margin: EdgeInsets.only(
                                                    top:
                                                        getVerticalSize(25.00)),
                                                decoration: BoxDecoration(
                                                    color:
                                                        ColorConstant.gray50),
                                                child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      GestureDetector(
                                                          onTap: () {
                                                            onTapTxtVousavezunco();
                                                          },
                                                          child: Container(
                                                              margin: EdgeInsets.only(
                                                                  left:
                                                                      getHorizontalSize(
                                                                          10.00),
                                                                  top: getVerticalSize(
                                                                      12.00),
                                                                  right:
                                                                      getHorizontalSize(
                                                                          10.00),
                                                                  bottom:
                                                                      getVerticalSize(
                                                                          14.00)),
                                                              child: RichText(
                                                                  text: TextSpan(
                                                                      children: [
                                                                        TextSpan(
                                                                            text:
                                                                                "Vous avez un compte?",
                                                                            style: TextStyle(
                                                                                color: ColorConstant.black900,
                                                                                fontSize: getFontSize(13),
                                                                                fontFamily: 'Arial',
                                                                                fontWeight: FontWeight.w400)),
                                                                        TextSpan(
                                                                            text:
                                                                                "Se connecter",
                                                                            style: TextStyle(
                                                                                color: ColorConstant.black900,
                                                                                fontSize: getFontSize(13),
                                                                                fontFamily: 'Amaranth',
                                                                                fontWeight: FontWeight.w400))
                                                                      ]),
                                                                  textAlign:
                                                                      TextAlign
                                                                          .center)))
                                                    ])),
                                          ])))
                            ]))))));
  }

  onTapBtnSignup(BuildContext context) async {
    // TODO: implement Actions
    print("We add the data for login");
    var email = this.controller.enteryourEmaiController.text;
    var userName = this.controller.enteryouruserController.text;
    var password = this.controller.enteryourPassController.text;
    var passwordConfirmation = this.controller.enteryourPassController1.text;

    var urlAddUser = Uri.parse('http://37.59.204.222:85/api/user/addUser/');
    var urlAddNotification =
        Uri.parse('http://37.59.204.222:85/api/notification/addNotification/');
    var urlSendVerificationLink =
        Uri.parse('http://37.59.204.222:85/api/notification/sendVerificationLink');

    // var country="";

    print(email);
    print(userName);
    print(password);
    print(passwordConfirmation);

    print(email.isEmpty);
    print(userName.isEmpty);
    print(password.isEmpty);
    print(passwordConfirmation.isEmpty);

    if (email.isEmpty == true ||
        userName.isEmpty == true ||
        password.isEmpty == true ||
        passwordConfirmation.isEmpty == true) {
      CoolAlert.show(
        context: context,
        type: CoolAlertType.warning,
        text: 'You should complete all the fields !',
      );
    } else {
      print("Everthing it ok !!!");
      print(password);
      print(passwordConfirmation);
      print(email.isEmail);
      if (password != passwordConfirmation || email.isEmail == false) {
        CoolAlert.show(
          context: context,
          type: CoolAlertType.error,
          text: 'Check your password or email !',
        );
      } else {
        print("Test Country !!");
        CoolAlert.show(
            context: context,
            type: CoolAlertType.loading,
            text: 'Loading...',
            autoCloseDuration: Duration(seconds: 2));

        /*
        print("CountryGlobal Value test !!!");
        Position pos = await _determinePosition();
        List<Placemark> newPlace = await placemarkFromCoordinates(pos.latitude, pos.longitude);
        Placemark placemark = newPlace[0];
        var country = placemark.country;
        print(country);
        print(country.runtimeType);
        if(country.isEmpty==true){
          CoolAlert.show(
            context: context,
            type: CoolAlertType.loading,
            text: 'Loading...');
            Position pos = await _determinePosition();
            List<Placemark> newPlace = await placemarkFromCoordinates(pos.latitude, pos.longitude);
            Placemark placemark = newPlace[0];
            country = placemark.country.toString();
        }
        print(country);
        */
        var variableTestOfAddUser = 0;
        var variableTestOfAddNotification = 0;
        var variableTestOfSendVerificationLink = 0;

        var resultSignUpFunction = "";

        var requestAddUser = http.MultipartRequest("POST", urlAddUser);

        requestAddUser.fields['userName'] = userName;
        requestAddUser.fields['email'] = email;
        requestAddUser.fields['password'] = password;
        requestAddUser.fields['country'] = 'Tunisia';
        requestAddUser.fields['connectedToGreenHouse'] = 'false';
        // requestAddUser.fields['idGreenHouse'] = '';
        

        var picture = http.MultipartFile.fromBytes(
            'image',
            (await rootBundle.load('assets/images/AgronoMek.png'))
                .buffer
                .asUint8List(),
            filename: 'AgronoMek.png',
            contentType: new MediaType('image', 'png'));

        requestAddUser.files.add(picture);

        requestAddUser.send().then((responseAddUser) async {
          if (responseAddUser.statusCode == 200) {
            print("Add an user with success !!");
            variableTestOfAddUser = 1;
            var responseAddNotification =
                await http.post(urlAddNotification, body: {
              'verify': 'false',
              'message':
                  'An new user has add it and his account not activate !!',
              'email': email
            });
            if (responseAddNotification.statusCode == 200) {
              print("Add an notification with success !!");
              variableTestOfAddNotification = 1;
            } else {
              print("There is an problem of notification table check on it !!");
              variableTestOfAddNotification = 0;
            }
            // // print('Response status: ${responseAddNotification.statusCode}');
            // // print("Resonse body: " + responseAddNotification.body);

            var responseSendVerificationLink = await http
                .post(urlSendVerificationLink, body: {'email': email});

            if (responseSendVerificationLink.statusCode == 200) {
              print("Add an notification on email account with success !!");
              variableTestOfSendVerificationLink = 1;
            } else {
              print("There is an problem of notification email check on it !!");
              variableTestOfSendVerificationLink = 0;
            }

            this.controller.enteryourEmaiController.clear();
            this.controller.enteryourPassController.clear();
            this.controller.enteryourPassController1.clear();
            this.controller.enteryouruserController.clear();

            if (variableTestOfAddUser == 1 &&
                variableTestOfAddNotification == 1 &&
                variableTestOfSendVerificationLink == 1) {
              Get.toNamed(AppRoutes.loginScreen);

              resultSignUpFunction= "Welcome in AgronoMek, check your email !!";
              Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen("",resultSignUpFunction)));

            } else if (variableTestOfAddUser == 0 ||
                variableTestOfAddNotification == 0 ||
                variableTestOfAddNotification == 0) {
              CoolAlert.show(
                  context: context,
                  type: CoolAlertType.error,
                  text:
                      'You have an error, chose another methode for signup or call our technical service !!',
                  autoCloseDuration: Duration(seconds: 2));
            }
          } else {
            print("There is an problem of user table check on it !!");
            variableTestOfAddUser = 0;
          }
        });
      }
    }
  }

  onTapImgContinuewithG() {
    // TODO: implement Action
    print("Continue with google");
    signIn();
  }

  onTapTxtContinuewithA() {
    // TODO: implement Actions
    print("Continue with apple");
    // I make this next instruction for test
    // But before you must deleted it
    signOut();
  }

  onTapTxtContinuewithf() {
    // TODO: implement Actions
    print("Continue with facebook");
  }

  onTapTxtVousavezunco() {
    // TODO: implement Actions
    print("Go To sign In");
    Get.toNamed(AppRoutes.loginScreen);
  }

  // This function it's looking for the country of your positions
  // void determineCountryPosition(BuildContext context) async{
  //   Position pos = await _determinePosition();
  //       List<Placemark> newPlace =
  //           await placemarkFromCoordinates(pos.latitude, pos.longitude);
  //       Placemark placemark = newPlace[0];
  //       var country = placemark.country;
  //       print(country);
  //       print(country.runtimeType);
  //       CountryGlobal = country.toString();
  // }
  Future<Position> _determinePosition() async {
    bool serviceEnabled;
    LocationPermission permission;

    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      return Future.error('Location services are disabled.');
    }

    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        return Future.error('Location permissions are denied');
      }
    }

    if (permission == LocationPermission.deniedForever) {
      return Future.error(
          'Location permissions are permanently denied, we cannot request permissions.');
    }
    return await Geolocator.getCurrentPosition();
  }
}

Future<void> signIn() async {
  try {
    await _googleSignIn.signIn();
  } catch (e) {
    print('Error signing in $e');
  }
}

void signOut() {
  _googleSignIn.disconnect();
}

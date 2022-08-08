import 'dart:convert';

import 'package:agronomek_app/core/app_export.dart';
import 'package:agronomek_app/screens/map_screen/map_screen.dart';
import 'package:agronomek_app/theme/app_style.dart';
import 'package:cool_alert/cool_alert.dart';

import 'controller/login_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:http/http.dart' as http;

// ignore_for_file: must_be_immutable
class LoginScreen extends GetWidget<LoginController> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool flagWarranty = false;

  final String resultOfForegetPassword;
  final String resultSignUpFunction;
  LoginScreen(this.resultOfForegetPassword, this.resultSignUpFunction,
      {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration.zero, () => showAlert(context));
    return WillPopScope(
        onWillPop: () async {
          return false;
        },
        child: SafeArea(
            child: Scaffold(
                backgroundColor: ColorConstant.whiteA700,
                body: Container(
                    width: size.width,
                    child: SingleChildScrollView(
                        child: Form(
                            key: _formKey,
                            child: Container(
                                decoration: BoxDecoration(
                                    color: ColorConstant.whiteA700),
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Align(
                                          alignment: Alignment.centerLeft,
                                          child: Padding(
                                              padding: EdgeInsets.only(
                                                  left:
                                                      getHorizontalSize(23.00),
                                                  top: getVerticalSize(42.10),
                                                  right:
                                                      getHorizontalSize(23.00)),
                                              child: Container(
                                                  height:
                                                      getVerticalSize(19.80),
                                                  width:
                                                      getHorizontalSize(11.67),
                                                  child: SvgPicture.asset(
                                                      ImageConstant.imgVector,
                                                      fit: BoxFit.fill)))),
                                      Align(
                                          alignment: Alignment.center,
                                          child: Container(
                                              height: getVerticalSize(198.00),
                                              width: getHorizontalSize(158.00),
                                              margin: EdgeInsets.only(
                                                  left:
                                                      getHorizontalSize(23.00),
                                                  top: getVerticalSize(6.10),
                                                  right:
                                                      getHorizontalSize(23.00)),
                                              child: Stack(
                                                  alignment:
                                                      Alignment.bottomRight,
                                                  children: [
                                                    // Padding(
                                                    //   padding: EdgeInsets.only(
                                                    //     left: getHorizontalSize(23.00),
                                                    //     top: getVerticalSize(17.10),
                                                    //     bottom: getVerticalSize(195.10)
                                                    //   ),
                                                    //   child: GestureDetector(
                                                    //     onTap: (() {
                                                    //       print("Previous pages");
                                                    //       Get.toNamed(AppRoutes.boarding3Screen);
                                                    //     }),
                                                    //     child: Container(
                                                    //       height: getVerticalSize(19.80),
                                                    //       width: getHorizontalSize(11.67),
                                                    //       child: SvgPicture.asset(
                                                    //         ImageConstant.imgVector64,
                                                    //         fit: BoxFit.fill,
                                                    //       ),
                                                    //     ),
                                                    //   ),
                                                    // ),

                                                    Align(
                                                        alignment: Alignment
                                                            .centerLeft,
                                                        child: Image.asset(
                                                            ImageConstant
                                                                .imgLogin1,
                                                            height:
                                                                getVerticalSize(
                                                                    198.00),
                                                            width:
                                                                getHorizontalSize(
                                                                    158.00),
                                                            fit: BoxFit.fill)),
                                                    Align(
                                                        alignment: Alignment
                                                            .bottomRight,
                                                        child: Container(
                                                            width:
                                                                getHorizontalSize(
                                                                    100.00),
                                                            margin: EdgeInsets.only(
                                                                left:
                                                                    getHorizontalSize(
                                                                        25.00),
                                                                top:
                                                                    getVerticalSize(
                                                                        10.00),
                                                                right:
                                                                    getHorizontalSize(
                                                                        25.00),
                                                                bottom:
                                                                    getVerticalSize(
                                                                        2.00)),
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
                                                                      padding: EdgeInsets.only(
                                                                          left: getHorizontalSize(
                                                                              10.00),
                                                                          right: getHorizontalSize(
                                                                              10.00)),
                                                                      child: Image.asset(
                                                                          ImageConstant
                                                                              .imgAgrinomeikremo,
                                                                          height: getVerticalSize(
                                                                              50.00),
                                                                          width: getHorizontalSize(
                                                                              47.00),
                                                                          fit: BoxFit
                                                                              .fill)),
                                                                  Align(
                                                                      alignment:
                                                                          Alignment
                                                                              .centerLeft,
                                                                      child: Padding(
                                                                          padding: EdgeInsets.only(
                                                                              top: getVerticalSize(
                                                                                  71.00)),
                                                                          child: Text(
                                                                              "AgronoMek",
                                                                              overflow: TextOverflow.ellipsis,
                                                                              textAlign: TextAlign.center,
                                                                              style: AppStyle.textstyleamaranthbold20.copyWith(fontSize: getFontSize(18)))))
                                                                ])))
                                                  ]))),
                                      Align(
                                          alignment: Alignment.centerLeft,
                                          child: Padding(
                                              padding: EdgeInsets.only(
                                                  left:
                                                      getHorizontalSize(38.00),
                                                  top: getVerticalSize(22.00),
                                                  right:
                                                      getHorizontalSize(38.00)),
                                              child: Text("Email",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .textstyleamaranthregular16
                                                      .copyWith(
                                                          fontSize: getFontSize(
                                                              16))))),
                                      Padding(
                                          padding: EdgeInsets.only(
                                              left: getHorizontalSize(44.00),
                                              top: getVerticalSize(3.00),
                                              right: getHorizontalSize(44.00)),
                                          child: Container(
                                              height: getVerticalSize(27.00),
                                              width: getHorizontalSize(269.00),
                                              child: TextFormField(
                                                  focusNode: FocusNode(),
                                                  validator: (value) {
                                                    if (value == null ||
                                                        (!isValidEmail(value,
                                                            isRequired:
                                                                true))) {
                                                      return "Please enter valid email";
                                                    }
                                                    return null;
                                                  },
                                                  keyboardType: TextInputType
                                                      .emailAddress,
                                                  controller: controller
                                                      .enteryourEmaiController,
                                                  decoration: InputDecoration(
                                                      hintText:
                                                          "Enter your Email address",
                                                      hintStyle: AppStyle.textstyleamaranthregular16.copyWith(
                                                          fontSize:
                                                              getFontSize(16.0),
                                                          color: ColorConstant
                                                              .gray60090),
                                                      enabledBorder: UnderlineInputBorder(
                                                          borderSide: BorderSide(
                                                              color: ColorConstant
                                                                  .tealA400)),
                                                      focusedBorder: UnderlineInputBorder(
                                                          borderSide: BorderSide(
                                                              color: ColorConstant.tealA400)),
                                                      disabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: ColorConstant.tealA400)),
                                                      prefixIcon: Container(margin: EdgeInsets.only(left: getHorizontalSize(2.00), top: getVerticalSize(3.15), right: getHorizontalSize(8.00), bottom: getVerticalSize(10.15)), child: Container(height: getSize(13.70), width: getSize(20.00), child: SvgPicture.asset(ImageConstant.imgVector65, fit: BoxFit.fill))),
                                                      prefixIconConstraints: BoxConstraints(minWidth: getSize(13.70), minHeight: getSize(13.70)),
                                                      isDense: true,
                                                      contentPadding: EdgeInsets.only(right: getHorizontalSize(30.00), bottom: getVerticalSize(7.00))),
                                                  style: TextStyle(color: ColorConstant.gray60090, fontSize: getFontSize(16.0), fontFamily: 'Amaranth', fontWeight: FontWeight.w400)))),
                                      Align(
                                          alignment: Alignment.centerLeft,
                                          child: Padding(
                                              padding: EdgeInsets.only(
                                                  left:
                                                      getHorizontalSize(38.00),
                                                  top: getVerticalSize(22.00),
                                                  right:
                                                      getHorizontalSize(38.00)),
                                              child: Text("Password",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .textstyleamaranthregular16
                                                      .copyWith(
                                                          fontSize: getFontSize(
                                                              16))))),
                                      Padding(
                                          padding: EdgeInsets.only(
                                              left: getHorizontalSize(44.00),
                                              top: getVerticalSize(20.00),
                                              right: getHorizontalSize(44.00)),
                                          child: Container(
                                              height: getVerticalSize(27.00),
                                              width: getHorizontalSize(269.00),
                                              child: TextFormField(
                                                  focusNode: FocusNode(),
                                                  validator: (value) {
                                                    if (value == null ||
                                                        (!isValidPassword(value,
                                                            isRequired:
                                                                true))) {
                                                      return "Please enter valid password";
                                                    }
                                                    return null;
                                                  },
                                                  keyboardType: TextInputType
                                                      .visiblePassword,
                                                  controller: controller
                                                      .enteryourpasswordController,
                                                  obscureText: true,
                                                  decoration: InputDecoration(
                                                      hintText:
                                                          "Enter your user password",
                                                      hintStyle: AppStyle.textstyleamaranthregular16.copyWith(
                                                          fontSize:
                                                              getFontSize(16.0),
                                                          color: ColorConstant
                                                              .gray60090),
                                                      enabledBorder: UnderlineInputBorder(
                                                          borderSide: BorderSide(
                                                              color: ColorConstant
                                                                  .tealA400)),
                                                      focusedBorder: UnderlineInputBorder(
                                                          borderSide: BorderSide(
                                                              color: ColorConstant.tealA400)),
                                                      disabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: ColorConstant.tealA400)),
                                                      prefixIcon: Container(margin: EdgeInsets.only(right: getHorizontalSize(10.00), bottom: getVerticalSize(7.00)), child: Container(height: getSize(20.00), width: getSize(20.00), child: SvgPicture.asset(ImageConstant.imgGroup36, fit: BoxFit.fill))),
                                                      prefixIconConstraints: BoxConstraints(minWidth: getSize(20.00), minHeight: getSize(20.00)),
                                                      isDense: true,
                                                      contentPadding: EdgeInsets.only(right: getHorizontalSize(30.00), bottom: getVerticalSize(7.00))),
                                                  style: TextStyle(color: ColorConstant.gray60090, fontSize: getFontSize(16.0), fontFamily: 'Amaranth', fontWeight: FontWeight.w400)))),
                                      Align(
                                          alignment: Alignment.topRight,
                                          child: Padding(
                                              padding: EdgeInsets.only(
                                                  left:
                                                      getHorizontalSize(44.00),
                                                  top: getVerticalSize(0.00),
                                                  right:
                                                      getHorizontalSize(44.00)),
                                              child: GestureDetector(
                                                onTap: () {
                                                  if (this
                                                          .controller
                                                          .enteryourpasswordController
                                                          .text !=
                                                      "") {
                                                    print("Show password !!!!");
                                                    print(this
                                                        .controller
                                                        .enteryourpasswordController);
                                                    CoolAlert.show(
                                                        context: context,
                                                        type:
                                                            CoolAlertType.info,
                                                        text: "Your password: " +
                                                            this
                                                                .controller
                                                                .enteryourpasswordController
                                                                .text);
                                                  }
                                                  // this.controller.enteryourEmaiController.
                                                },
                                                child: Image.asset(
                                                    ImageConstant.imgClosedeye1,
                                                    height:
                                                        getVerticalSize(21.00),
                                                    width: getHorizontalSize(
                                                        45.00),
                                                    fit: BoxFit.fill),
                                              ))),
                                      Align(
                                          alignment: Alignment.centerLeft,
                                          child: Padding(
                                              padding: EdgeInsets.only(
                                                  top: getVerticalSize(30.00)),
                                              child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Container(
                                                        margin: EdgeInsets.only(
                                                            left:
                                                                getHorizontalSize(
                                                                    22.00)),
                                                        width:
                                                            getHorizontalSize(
                                                                111.00),
                                                        child: Row(children: [
                                                          Checkbox(
                                                              shape: RoundedRectangleBorder(
                                                                  side: BorderSide(
                                                                      color: ColorConstant
                                                                          .gray600,
                                                                      width: getHorizontalSize(
                                                                          1.00)),
                                                                  borderRadius:
                                                                      BorderRadius.circular(
                                                                          getHorizontalSize(
                                                                              1.00))),
                                                              materialTapTargetSize:
                                                                  MaterialTapTargetSize
                                                                      .shrinkWrap,
                                                              value: true,
                                                              onChanged:
                                                                  (value) {}),
                                                          Expanded(
                                                              child: Text(
                                                                  "Remember me",
                                                                  textAlign:
                                                                      TextAlign
                                                                          .left,
                                                                  style: AppStyle
                                                                      .textstyleamaranthregular13
                                                                      .copyWith(
                                                                          fontSize: getFontSize(
                                                                              13),
                                                                          letterSpacing:
                                                                              0.13)))
                                                        ])),
                                                    Padding(
                                                        padding: EdgeInsets.only(
                                                            right:
                                                                getHorizontalSize(
                                                                    22.00)),
                                                        child: GestureDetector(
                                                            onTap: () {
                                                              onTapForgetPassword();
                                                            },
                                                            child: Text(
                                                                "Forgot Password?",
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .right,
                                                                style: AppStyle
                                                                    .textstyleamaranthregular131
                                                                    .copyWith(
                                                                        fontSize:
                                                                            getFontSize(
                                                                                13),
                                                                        letterSpacing:
                                                                            0.13))))
                                                  ]))),
                                      Align(
                                          alignment: Alignment.center,
                                          child: Padding(
                                              padding: EdgeInsets.only(
                                                  left:
                                                      getHorizontalSize(23.00),
                                                  top: getVerticalSize(33.00),
                                                  right:
                                                      getHorizontalSize(23.00)),
                                              child: GestureDetector(
                                                  onTap: () {
                                                    onTapBtnLogin(context);
                                                  },
                                                  child: Container(
                                                      alignment:
                                                          Alignment.center,
                                                      height: getVerticalSize(
                                                          50.00),
                                                      width: size.width,
                                                      decoration: AppDecoration
                                                          .textstyleamaranthbold15,
                                                      child: Text("LOGIN",
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .textstyleamaranthbold15
                                                              .copyWith(
                                                                  fontSize:
                                                                      getFontSize(
                                                                          15))))))),
                                      Align(
                                          alignment: Alignment.center,
                                          child: GestureDetector(
                                              onTap: () {
                                                onTapGroup2();
                                              },
                                              child: Padding(
                                                  padding: EdgeInsets.only(
                                                      left: getHorizontalSize(
                                                          23.00),
                                                      top: getVerticalSize(
                                                          26.00),
                                                      right: getHorizontalSize(
                                                          23.00)),
                                                  child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .center,
                                                      mainAxisSize:
                                                          MainAxisSize.min,
                                                      children: [
                                                        Text(
                                                            "Don’t Have Account?",
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .textstyleamaranthregular131
                                                                .copyWith(
                                                                    fontSize:
                                                                        getFontSize(
                                                                            13))),
                                                        Padding(
                                                            padding: EdgeInsets.only(
                                                                left:
                                                                    getHorizontalSize(
                                                                        7.00)),
                                                            child: Text(
                                                                "Sign Up",
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .textstyleamaranthbold13
                                                                    .copyWith(
                                                                        fontSize:
                                                                            getFontSize(13))))
                                                      ])))),
                                      Align(
                                          alignment: Alignment.centerLeft,
                                          child: GestureDetector(
                                              onTap: () {
                                                onTapGroup1();
                                              },
                                              child: Container(
                                                  margin: EdgeInsets.only(
                                                      top: getVerticalSize(
                                                          44.00)),
                                                  decoration: BoxDecoration(
                                                      color:
                                                          ColorConstant.gray50),
                                                  child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .center,
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Padding(
                                                            padding: EdgeInsets.only(
                                                                top:
                                                                    getVerticalSize(
                                                                        13.00),
                                                                bottom:
                                                                    getVerticalSize(
                                                                        13.00)),
                                                            child: Text(
                                                                "Ou continuez avec",
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .center,
                                                                style: AppStyle
                                                                    .textstylearialmt13
                                                                    .copyWith(
                                                                        fontSize:
                                                                            getFontSize(13)))),
                                                        Padding(
                                                            padding: EdgeInsets.only(
                                                                left:
                                                                    getHorizontalSize(
                                                                        7.50),
                                                                top:
                                                                    getVerticalSize(
                                                                        14.00),
                                                                bottom:
                                                                    getVerticalSize(
                                                                        13.00)),
                                                            child: Image.asset(
                                                                ImageConstant
                                                                    .imgDownbutton,
                                                                height:
                                                                    getVerticalSize(
                                                                        14.00),
                                                                width:
                                                                    getHorizontalSize(
                                                                        18.00),
                                                                fit: BoxFit
                                                                    .fill))
                                                      ])))),
                                      Align(
                                          alignment: Alignment.center,
                                          child: Container(
                                              height: getVerticalSize(36.00),
                                              width: getHorizontalSize(304.00),
                                              margin: EdgeInsets.only(
                                                  left:
                                                      getHorizontalSize(23.00),
                                                  top: getVerticalSize(56.00),
                                                  right:
                                                      getHorizontalSize(23.00),
                                                  bottom:
                                                      getVerticalSize(20.00)),
                                              child: Stack(
                                                  alignment:
                                                      Alignment.centerLeft,
                                                  children: [
                                                    Align(
                                                        alignment: Alignment
                                                            .bottomLeft,
                                                        child: Container(
                                                            height:
                                                                getVerticalSize(
                                                                    11.00),
                                                            width:
                                                                getHorizontalSize(
                                                                    141.00),
                                                            margin: EdgeInsets.only(
                                                                left:
                                                                    getHorizontalSize(
                                                                        74.00),
                                                                top:
                                                                    getVerticalSize(
                                                                        10.00),
                                                                right:
                                                                    getHorizontalSize(
                                                                        74.00),
                                                                bottom:
                                                                    getVerticalSize(
                                                                        3.00)),
                                                            child: Stack(
                                                                alignment: Alignment
                                                                    .bottomCenter,
                                                                children: [
                                                                  Align(
                                                                      alignment:
                                                                          Alignment
                                                                              .centerLeft,
                                                                      child: Text(
                                                                          "2022 ©Xenophon-IT. All rights reserved.",
                                                                          overflow: TextOverflow
                                                                              .ellipsis,
                                                                          textAlign: TextAlign
                                                                              .center,
                                                                          style: AppStyle
                                                                              .textstyleamaranthregular9
                                                                              .copyWith(fontSize: getFontSize(9)))),
                                                                  Container(
                                                                      height: getVerticalSize(
                                                                          5.00),
                                                                      width: getHorizontalSize(
                                                                          136.00),
                                                                      margin: EdgeInsets.only(
                                                                          left: getHorizontalSize(
                                                                              2.00),
                                                                          top: getVerticalSize(
                                                                              10.00),
                                                                          right: getHorizontalSize(
                                                                              3.00),
                                                                          bottom: getVerticalSize(
                                                                              2.00)),
                                                                      decoration: BoxDecoration(
                                                                          color: ColorConstant
                                                                              .whiteA701,
                                                                          borderRadius:
                                                                              BorderRadius.circular(getHorizontalSize(2.50))))
                                                                ]))),
                                                    Align(
                                                        alignment: Alignment
                                                            .centerLeft,
                                                        child: Container(
                                                            width:
                                                                getHorizontalSize(
                                                                    304.00),
                                                            child: RichText(
                                                                text: TextSpan(
                                                                    children: [
                                                                      TextSpan(
                                                                          text:
                                                                              "En rejoignant AgronoMek, vous confirmez avoir lu et accepté",
                                                                          style: TextStyle(
                                                                              color: ColorConstant.gray600,
                                                                              fontSize: getFontSize(11),
                                                                              fontFamily: 'Arial',
                                                                              fontWeight: FontWeight.w400)),
                                                                      TextSpan(
                                                                          text:
                                                                              "Nos conditions d’utilisation",
                                                                          style: TextStyle(
                                                                              color: ColorConstant.black900,
                                                                              fontSize: getFontSize(11),
                                                                              fontFamily: 'Arial',
                                                                              fontWeight: FontWeight.w400,
                                                                              decoration: TextDecoration.underline)),
                                                                      TextSpan(
                                                                          text:
                                                                              "et confirmer avoir lu nos",
                                                                          style: TextStyle(
                                                                              color: ColorConstant.gray600,
                                                                              fontSize: getFontSize(11),
                                                                              fontFamily: 'Arial',
                                                                              fontWeight: FontWeight.w400)),
                                                                      TextSpan(
                                                                          text:
                                                                              "Notre politique de confidentialité.",
                                                                          style: TextStyle(
                                                                              color: ColorConstant.gray900,
                                                                              fontSize: getFontSize(11),
                                                                              fontFamily: 'Arial',
                                                                              fontWeight: FontWeight.w400,
                                                                              decoration: TextDecoration.underline))
                                                                    ]),
                                                                textAlign:
                                                                    TextAlign
                                                                        .left)))
                                                  ])))
                                    ]))))))));
  }

  onTapBtnLogin(BuildContext context) async {
    // TODO: implement Actions
    print("Login Function");
    var email = this.controller.enteryourEmaiController.text;
    var password = this.controller.enteryourpasswordController.text;
    var urlSendLoginUser =
        Uri.parse('http://37.59.204.222:85/api/user/loginUser/');

    if (email.isEmpty == true || password == true) {
      CoolAlert.show(
          context: context,
          type: CoolAlertType.warning,
          text: 'You should complete all the fields');
    } else {
      print("Everything it ok !!");
      print(email);
      print(password);

      var responseLoginUser = await http
          .post(urlSendLoginUser, body: {'email': email, 'password': password});

      if (responseLoginUser.statusCode == 200) {
        // print(responseLoginUser.body);
        // Get.toNamed(AppRoutes.mapScreen);
        final body = json.decode(responseLoginUser.body);
        final String token = body['token'];

        var urlSendInfoPosition = Uri.parse(
            'http://37.59.204.222:85/api/greenHouse/getLatAndLongOfOneUser');

        var responseInfoPosition =
            await http.post(urlSendInfoPosition, body: {'tokenId': token});

        if (responseInfoPosition.statusCode == 200) {
          final body2 = json.decode(responseInfoPosition.body);
          print("Test body2");
          print(body2);
          var resultOfPosition = body2['Result'];
          var resultOfGreenHouseName = body2['Id_AgronoMek'];
          var activationStatus = body2['Status_Activation'];
          print('The list of greenHouses: .${resultOfGreenHouseName}}');
          var varLogin = "Login";
          // Navigator.push(
          //     context,
          //     MaterialPageRoute(
          //         builder: (context) => MapScreen(varLogin, token,
          //             resultOfPosition, resultOfGreenHouseName)));
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => MapScreen(
                    varLogin: varLogin,
                    tokenOfUser: token,
                    listOfLatAndLong: resultOfPosition,
                    resultOfGreenHouseName:resultOfGreenHouseName,
                    activationStatus: activationStatus
                    )));
          this.controller.enteryourEmaiController.clear();
          this.controller.enteryourpasswordController.clear();
        }
        // else{
        //   Navigator.push(
        //     context, MaterialPageRoute(builder: (context) => MapScreen(token,"","")));
        // }
      } else {
        CoolAlert.show(
            context: context,
            type: CoolAlertType.error,
            text: "Your email or password it's incorrect !!",
            autoCloseDuration: Duration(seconds: 2));
        this.controller.enteryourEmaiController.clear();
        this.controller.enteryourpasswordController.clear();
      }
    }
  }

  onTapGroup2() {
    // TODO: implement Actions
    Get.toNamed(AppRoutes.signupScreen);
  }

  onTapGroup1() {
    // TODO: implement Actions
    Get.toNamed(AppRoutes.signupScreen);
  }

  onTapForgetPassword() {
    print("Screen of Forget password !!");
    Get.toNamed(AppRoutes.restPasswordScreen);
  }

  void showAlert(context) {
    if (this.resultOfForegetPassword.isEmpty == false) {
      CoolAlert.show(
        context: context,
        type: CoolAlertType.success,
        text: 'Check your email please!!',
      );
    }
    if (this.resultSignUpFunction.isEmpty == false) {
      CoolAlert.show(
          context: context,
          type: CoolAlertType.success,
          text: 'Welcome in AgronoMek, check your email !!',
          autoCloseDuration: Duration(seconds: 2));
    }
  }
}

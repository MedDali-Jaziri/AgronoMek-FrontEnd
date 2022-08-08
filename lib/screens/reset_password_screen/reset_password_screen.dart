import 'package:agronomek_app/core/app_export.dart';
import 'package:agronomek_app/screens/login_screen/login_screen.dart';
import 'package:agronomek_app/theme/app_style.dart';
import 'package:cool_alert/cool_alert.dart';

import 'controller/reset_password_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:http/http.dart' as http;

// ignore_for_file: must_be_immutable
class ResetPasswordScreen extends GetWidget<ResetPasswordController> {
  
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: Container(
                width: size.width,
                child: SingleChildScrollView(
                    child: Form(
                        key: _formKey,
                        child: Container(
                            margin: EdgeInsets.only(),
                            decoration:
                                BoxDecoration(color: ColorConstant.whiteA700),
                            child: Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Align(
                                      alignment: Alignment.centerLeft,
                                      child: Padding(
                                          padding: EdgeInsets.only(
                                              left: getHorizontalSize(23.00),
                                              top: getVerticalSize(18.10),
                                              right: getHorizontalSize(23.00)),
                                          child: Container(
                                              height: getVerticalSize(19.80),
                                              width: getHorizontalSize(11.67),
                                              child: SvgPicture.asset(
                                                  ImageConstant.imgVector2,
                                                  fit: BoxFit.fill)))),
                                  Align(
                                      alignment: Alignment.center,
                                      child: Container(
                                          height: getVerticalSize(433.00),
                                          width: getHorizontalSize(352.00),
                                          margin: EdgeInsets.only(
                                              left: getHorizontalSize(11.00),
                                              top: getVerticalSize(125.10),
                                              right: getHorizontalSize(11.00),
                                              bottom: getVerticalSize(20.00)),
                                          child: Stack(
                                              alignment: Alignment.topRight,
                                              children: [
                                                Align(
                                                    alignment:
                                                        Alignment.centerLeft,
                                                    child: Container(
                                                        margin: EdgeInsets.only(
                                                            top:
                                                                getVerticalSize(
                                                                    4.00)),
                                                        decoration: BoxDecoration(
                                                            color: ColorConstant
                                                                .whiteA701,
                                                            borderRadius:
                                                                BorderRadius.circular(
                                                                    getHorizontalSize(
                                                                        10.00)),
                                                            boxShadow: [
                                                              BoxShadow(
                                                                  color: ColorConstant
                                                                      .gray60019,
                                                                  spreadRadius:
                                                                      getHorizontalSize(
                                                                          2.00),
                                                                  blurRadius:
                                                                      getHorizontalSize(
                                                                          2.00),
                                                                  offset:
                                                                      Offset(
                                                                          4, 4))
                                                            ]),
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
                                                              Align(
                                                                  alignment:
                                                                      Alignment
                                                                          .centerLeft,
                                                                  child: GestureDetector(
                                                                      onTap: () {
                                                                        onTapGroup12();
                                                                      },
                                                                      child: Container(
                                                                          width: double.infinity,
                                                                          decoration: BoxDecoration(color: ColorConstant.greenA200, borderRadius: BorderRadius.circular(getHorizontalSize(10.00))),
                                                                          child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.center, mainAxisAlignment: MainAxisAlignment.start, children: [
                                                                            Align(
                                                                                alignment: Alignment.centerLeft,
                                                                                child: Padding(padding: EdgeInsets.only(left: getHorizontalSize(25.00), top: getVerticalSize(27.00), right: getHorizontalSize(25.00), bottom: getVerticalSize(30.32)), child: Text("Reset password", overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: AppStyle.textstyleamaranthbold19.copyWith(fontSize: getFontSize(19)))))
                                                                          ])))),
                                                              Container(
                                                                  width: double
                                                                      .infinity,
                                                                  margin: EdgeInsets.only(
                                                                      left: getHorizontalSize(
                                                                          10.00),
                                                                      top: getVerticalSize(
                                                                          47.00),
                                                                      right: getHorizontalSize(
                                                                          10.00)),
                                                                  decoration: BoxDecoration(
                                                                      color: ColorConstant
                                                                          .cyan100,
                                                                      borderRadius:
                                                                          BorderRadius.circular(getHorizontalSize(
                                                                              10.00)),
                                                                      boxShadow: [
                                                                        BoxShadow(
                                                                            color:
                                                                                ColorConstant.gray60019,
                                                                            spreadRadius: getHorizontalSize(2.00),
                                                                            blurRadius: getHorizontalSize(2.00),
                                                                            offset: Offset(4, 4))
                                                                      ]),
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
                                                                        Container(
                                                                            width: getHorizontalSize(
                                                                                258.00),
                                                                            margin: EdgeInsets.only(
                                                                                left: getHorizontalSize(10.00),
                                                                                top: getVerticalSize(8.00),
                                                                                right: getHorizontalSize(10.00),
                                                                                bottom: getVerticalSize(2.00)),
                                                                            child: Text("Enter your email address", maxLines: null, textAlign: TextAlign.center, style: AppStyle.textstyleamaranthregular16.copyWith(fontSize: getFontSize(16))))
                                                                      ])),
                                                              Align(
                                                                  alignment:
                                                                      Alignment
                                                                          .centerLeft,
                                                                  child: Padding(
                                                                      padding: EdgeInsets.only(
                                                                          left: getHorizontalSize(
                                                                              22.00),
                                                                          top: getVerticalSize(
                                                                              36.00),
                                                                          right: getHorizontalSize(
                                                                              22.00)),
                                                                      child: Text(
                                                                          "Email",
                                                                          overflow: TextOverflow
                                                                              .ellipsis,
                                                                          textAlign: TextAlign
                                                                              .left,
                                                                          style: AppStyle
                                                                              .textstyleamaranthregular12
                                                                              .copyWith(fontSize: getFontSize(12))))),
                                                              Padding(
                                                                  padding: EdgeInsets.only(
                                                                      left: getHorizontalSize(
                                                                          32.00),
                                                                      top: getVerticalSize(
                                                                          15.00),
                                                                      right: getHorizontalSize(
                                                                          32.00)),
                                                                  child: Container(
                                                                      height: getVerticalSize(25.00),
                                                                      width: getHorizontalSize(269.00),
                                                                      child: TextFormField(
                                                                          focusNode: FocusNode(),
                                                                          validator: (value) {
                                                                            if (value == null ||
                                                                                (!isValidEmail(value, isRequired: true))) {
                                                                              return "Please enter valid email";
                                                                            }
                                                                            return null;
                                                                          },
                                                                          keyboardType: TextInputType.emailAddress,
                                                                          controller: controller.enteryouremaiController,
                                                                          decoration: InputDecoration(hintText: "Enter your email address", hintStyle: AppStyle.textstyleamaranthregular161.copyWith(fontSize: getFontSize(16.0), color: ColorConstant.gray60090), enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: ColorConstant.tealA400)), focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: ColorConstant.tealA400)), disabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: ColorConstant.tealA400)), prefixIcon: Container(margin: EdgeInsets.only(top: getVerticalSize(4.68), right: getHorizontalSize(13.00), bottom: getVerticalSize(8.67)), child: Container(height: getSize(11.65), width: getSize(17.00), child: SvgPicture.asset(ImageConstant.imgVector3, fit: BoxFit.fill))), prefixIconConstraints: BoxConstraints(minWidth: getSize(11.65), minHeight: getSize(11.65)), isDense: true, contentPadding: EdgeInsets.only(right: getHorizontalSize(30.00), bottom: getVerticalSize(5.00))),
                                                                          style: TextStyle(color: ColorConstant.gray60090, fontSize: getFontSize(16.0), fontFamily: 'Amaranth', fontWeight: FontWeight.w400)))),
                                                              Padding(
                                                                  padding: EdgeInsets.only(
                                                                      left: getHorizontalSize(
                                                                          10.00),
                                                                      top: getVerticalSize(
                                                                          39.00),
                                                                      right: getHorizontalSize(
                                                                          10.00),
                                                                      bottom: getVerticalSize(
                                                                          20.00)),
                                                                  child:
                                                                      GestureDetector(
                                                                          onTap:
                                                                              () {
                                                                            onTapBtnSendpasswordr(context);
                                                                          },
                                                                          child: Container(
                                                                              alignment: Alignment.center,
                                                                              height: getVerticalSize(44.00),
                                                                              width: getHorizontalSize(313.00),
                                                                              decoration: AppDecoration.textstyleamaranthbold15,
                                                                              child: Text("Send password reset link", textAlign: TextAlign.left, style: AppStyle.textstyleamaranthbold15.copyWith(fontSize: getFontSize(15))))))
                                                            ]))),
                                                Align(
                                                    alignment:
                                                        Alignment.topRight,
                                                    child: Padding(
                                                        padding: EdgeInsets.only(
                                                            left:
                                                                getHorizontalSize(
                                                                    18.00),
                                                            right:
                                                                getHorizontalSize(
                                                                    18.00),
                                                            bottom:
                                                                getVerticalSize(
                                                                    10.00)),
                                                        child: Image.asset(
                                                            ImageConstant
                                                                .imgProfileimg1,
                                                            height:
                                                                getVerticalSize(
                                                                    84.00),
                                                            width:
                                                                getHorizontalSize(
                                                                    144.00),
                                                            fit: BoxFit.fill)))
                                              ])))
                                ])))))));
  }

  onTapGroup12() {
    // TODO: implement Actions
    print("Close the window");
  }
  onTapBtnSendpasswordr(BuildContext context) async {
    // TODO: implement Actions
    print("Send the code the email");
    var resultOfForegetPassword = "";
    var urlSendForgetPassword =
        Uri.parse('http://37.59.204.222:85/api/user/forgetPassword');

    var email = this.controller.enteryouremaiController.text;
    print(email);
    if(email.isEmpty==true){
      CoolAlert.show(
        context: context,
        type: CoolAlertType.warning,
        text: 'You should complete all the fields'
        );
    }
    else{
      var responseForgetPassword = await http.post(urlSendForgetPassword, body: {
        'email': email,
        });

      if (responseForgetPassword.statusCode == 200) {
          // Get.toNamed(AppRoutes.loginScreen);
          resultOfForegetPassword= "We modified your password !!";
          Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen(resultOfForegetPassword,"")));
        this.controller.enteryouremaiController.clear();
      }
      else {
        CoolAlert.show(
          context: context,
          type: CoolAlertType.error,
          text:
            "Your email incorrect, try again !!",
          autoCloseDuration: Duration(seconds: 2));
          this.controller.enteryouremaiController.clear();
      }
    }
  }
}

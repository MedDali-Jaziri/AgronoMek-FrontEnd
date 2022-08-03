import 'dart:convert';
import 'dart:io';
import 'package:path/path.dart';
import 'package:async/async.dart';

import 'package:agronomek_app/core/app_export.dart';
import 'package:agronomek_app/screens/homemodel2page_screen/homemodel2page_screen.dart';
import 'package:agronomek_app/screens/profile_update_screen/controller/profile_update_controller.dart';
import 'package:agronomek_app/theme/app_style.dart';
import 'package:agronomek_app/widgets/custom_button.dart';
import 'package:agronomek_app/widgets/custom_icon_button.dart';
import 'package:agronomek_app/widgets/custom_text_form_field.dart';
import 'package:cool_alert/cool_alert.dart';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:agronomek_app/core/app_export.dart';
import 'package:agronomek_app/core/utils/validation_functions.dart';
import 'package:http/http.dart' as http;
import 'package:image_picker/image_picker.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:http_parser/http_parser.dart';

// ignore_for_file: must_be_immutable
class ProfileUpdateScreen extends GetWidget<ProfileUpdateController> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  File? image;
  final _picker = ImagePicker();
  bool showSpinner = false;

  // final String tokenOfUser;
  // ProfileUpdateScreen(this.tokenOfUser, {Key? key})
  //     : super(key: key);

  @override
  Widget build(BuildContext context) {
    Future.delayed(
      Duration.zero,
      () async {
        final prefs = await SharedPreferences.getInstance();
        prefs.clear();
        print("Bloc1 !!");
        var tokenRe = Get.arguments['token'];
        print(tokenRe);
        var urlSendForInformationUser =
            Uri.parse('http://37.59.204.222/api/user/getAllInformationOfUser/');

        var responseOfInformationUser = await http
            .post(urlSendForInformationUser, body: {'tokenId': tokenRe});

        if (responseOfInformationUser.statusCode == 200) {
          final body = json.decode(responseOfInformationUser.body);
          var userName = body['userName'];
          var emailUser = body['email'];
          var imageUser = body['image'];
          var countryUser = body['country'];

          this.controller.setUserName(userName);
          this.controller.setEmailUser(emailUser);
          this.controller.setImageUser(imageUser);
          this.controller.setCountryUser(countryUser);
          print(countryUser);
        } else {
          this.controller.setUserName("Enter your user name");
          this.controller.setCountryUser("Enter your Country “Tunisia”");
        }
      },
    );
    return WillPopScope(
        onWillPop: () async {
          return false;
        },
        child: SafeArea(
            child: Scaffold(
                backgroundColor: ColorConstant.whiteA700ProfileColor,
                body: Container(
                    width: size.width,
                    child: SingleChildScrollView(
                        child: Form(
                            key: _formKey,
                            autovalidateMode:
                                AutovalidateMode.onUserInteraction,
                            child: Container(
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                  Align(
                                      alignment: Alignment.centerLeft,
                                      child: Container(
                                          height: getVerticalSize(302.00),
                                          width: size.width,
                                          child: Stack(
                                              alignment: Alignment.centerLeft,
                                              children: [
                                                GestureDetector(
                                                  onTap: () {
                                                    onTapImgArrowleft(context);
                                                  },
                                                  child: Align(
                                                      alignment:
                                                          Alignment.topLeft,
                                                      child: Padding(
                                                          padding: getPadding(
                                                              left: 23,
                                                              top: 42,
                                                              right: 23,
                                                              bottom: 42),
                                                          child: Container(
                                                              height:
                                                                  getVerticalSize(
                                                                      19.00),
                                                              width:
                                                                  getHorizontalSize(
                                                                      11.00),
                                                              child: SvgPicture.asset(
                                                                  ImageConstant
                                                                      .imgArrowleft,
                                                                  fit: BoxFit
                                                                      .fill)))),
                                                ),
                                                
                                                Align(
                                                    alignment:
                                                        Alignment.centerLeft,
                                                    child: Container(
                                                        height: getVerticalSize(
                                                            302.00),
                                                        width: size.width,
                                                        child: Stack(
                                                            alignment: Alignment
                                                                .bottomCenter,
                                                            children: [
                                                              Align(
                                                                  alignment:
                                                                      Alignment
                                                                          .centerLeft,
                                                                  child: Container(
                                                                      height: getVerticalSize(
                                                                          302.00),
                                                                      width: getHorizontalSize(
                                                                          375.00),
                                                                      child: SvgPicture.asset(
                                                                          ImageConstant
                                                                              .imageNotFound,
                                                                          fit: BoxFit
                                                                              .fill))),
                                                              Align(
                                                                  alignment:
                                                                      Alignment
                                                                          .bottomCenter,
                                                                  child:
                                                                      Container(
                                                                          margin: getMargin(
                                                                              left:
                                                                                  111,
                                                                              top:
                                                                                  46,
                                                                              right:
                                                                                  111,
                                                                              bottom:
                                                                                  46),
                                                                          child: Column(
                                                                              mainAxisSize: MainAxisSize.min,
                                                                              crossAxisAlignment: CrossAxisAlignment.start,
                                                                              mainAxisAlignment: MainAxisAlignment.start,
                                                                              children: [
                                                                                GestureDetector(
                                                                                  onTap: () async {
                                                                                    final pickedFile = await _picker.pickImage(source: ImageSource.gallery);
                                                                                    if (pickedFile != null) {
                                                                                      image = File(pickedFile.path);
                                                                                    } else {
                                                                                      print("No image selected please try again !!!");
                                                                                    }
                                                                                  },
                                                                                  child: Align(
                                                                                      alignment: Alignment.center,
                                                                                      child: Container(
                                                                                          height: getSize(78.00),
                                                                                          width: getSize(78.00),
                                                                                          margin: getMargin(left: 38, right: 37),
                                                                                          child: Stack(alignment: Alignment.center, children: [
                                                                                            CustomIconButton(height: 78, width: 78, alignment: Alignment.centerLeft, child: SvgPicture.asset(ImageConstant.imgProfilecopy)),
                                                                                            Align(
                                                                                                alignment: Alignment.center,
                                                                                                child: Padding(
                                                                                                    padding: getPadding(all: 3),
                                                                                                    child: ClipRRect(
                                                                                                        borderRadius: BorderRadius.circular(getHorizontalSize(36.00)),
                                                                                                        child: Obx(() => Image(
                                                                                                              image: NetworkImage('http://37.59.204.222/${this.controller.imageUser.value}'),
                                                                                                              height: getSize(72.00),
                                                                                                              width: getSize(72.00),
                                                                                                              fit: BoxFit.fill,
                                                                                                            )))))
                                                                                          ]))),
                                                                                ),
                                                                                Padding(padding: getPadding(top: 18), child: Obx(() => Text("${this.controller.userName.value}", overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: AppStyle.txtDMSansBold16.copyWith(height: 1.50)))),
                                                                                Align(alignment: Alignment.center, child: Padding(padding: getPadding(left: 4, right: 4), child: Obx(() => Text("${this.controller.emailUser.value}", overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: AppStyle.txtDMSansRegular13.copyWith(height: 1.50)))))
                                                                              ])))
                                                            ])))
                                              ]))),
                                  Align(
                                      alignment: Alignment.centerLeft,
                                      child: Padding(
                                          padding: getPadding(
                                              left: 36, top: 2, right: 36),
                                          child: Text("UserName",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtAmaranthRegular16
                                                  .copyWith()))),
                                  Obx(
                                    () => CustomTextFormField(
                                      width: 269,
                                      focusNode: FocusNode(),
                                      controller: controller.userController,
                                      hintText:
                                          "${this.controller.userName.value}",
                                      margin: getMargin(
                                          left: 28, top: 2, right: 28),
                                      alignment: Alignment.center,
                                      prefix: Container(
                                          margin:
                                              getMargin(right: 10, bottom: 6),
                                          child: SvgPicture.asset(
                                              ImageConstant.imgUser,
                                              fit: BoxFit.fill)),
                                      prefixConstraints: BoxConstraints(
                                          minWidth: getSize(20.00),
                                          minHeight: getSize(20.00)),
                                      // validator: (value) {
                                      //   if (value == null ||
                                      //       (!isText(value, isRequired: true))) {
                                      //     return "Please enter valid text";
                                      //   }
                                      //   return null;
                                      // }
                                    ),
                                  ),
                                  Align(
                                      alignment: Alignment.centerLeft,
                                      child: Padding(
                                          padding: getPadding(
                                              left: 36, top: 19, right: 36),
                                          child: Text("Country",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtAmaranthRegular16
                                                  .copyWith()))),
                                  Obx(
                                    () => CustomTextFormField(
                                        width: 269,
                                        focusNode: FocusNode(),
                                        controller:
                                            controller.languageController,
                                        hintText:
                                            "${this.controller.countryUser.value}",
                                        margin: getMargin(
                                            left: 28, top: 5, right: 28),
                                        alignment: Alignment.center,
                                        prefix: Container(
                                            margin: getMargin(
                                                left: 2,
                                                top: 3,
                                                right: 12,
                                                bottom: 6),
                                            child: SvgPicture.asset(
                                                ImageConstant.imgFlag,
                                                fit: BoxFit.fill)),
                                        prefixConstraints: BoxConstraints(
                                            minWidth: getSize(18.00),
                                            minHeight: getSize(18.00))),
                                  ),
                                  Align(
                                      alignment: Alignment.centerLeft,
                                      child: Padding(
                                          padding: getPadding(
                                              left: 34, top: 22, right: 34),
                                          child: Text("Last Password",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtAmaranthRegular16
                                                  .copyWith()))),
                                  Align(
                                      alignment: Alignment.centerRight,
                                      child: Container(
                                          height: getVerticalSize(27.00),
                                          width: getHorizontalSize(269.00),
                                          margin: getMargin(
                                              left: 44, top: 5, right: 44),
                                          child: Stack(
                                              alignment: Alignment.topRight,
                                              children: [
                                                CustomTextFormField(
                                                    width: 269,
                                                    focusNode: FocusNode(),
                                                    controller: controller
                                                        .lockController,
                                                    hintText:
                                                        "Enter your new password",
                                                    alignment:
                                                        Alignment.centerLeft,
                                                    prefix: Container(
                                                        margin: getMargin(
                                                            right: 10,
                                                            bottom: 7),
                                                        child: SvgPicture.asset(
                                                            ImageConstant
                                                                .imgGroup361,
                                                            fit: BoxFit.fill)),
                                                    prefixConstraints:
                                                        BoxConstraints(
                                                            minWidth:
                                                                getSize(20.00),
                                                            minHeight:
                                                                getSize(20.00)),
                                                    // validator: (value) {
                                                    //   if (value == null ||
                                                    //       (!isValidPassword(value,
                                                    //           isRequired: true))) {
                                                    //     return "Please enter valid password";
                                                    //   }
                                                    //   return null;
                                                    // },
                                                    isObscureText: true),
                                                GestureDetector(
                                                  onTap: () {
                                                    if (this
                                                            .controller
                                                            .lockController
                                                            .text !=
                                                        "") {
                                                      print(
                                                          "Show password !!!!");
                                                      print(this
                                                          .controller
                                                          .lockController);

                                                      CoolAlert.show(
                                                          context: context,
                                                          type: CoolAlertType
                                                              .info,
                                                          text: "Your new password: " +
                                                              this
                                                                  .controller
                                                                  .lockController
                                                                  .text);
                                                    }
                                                  },
                                                  child: Align(
                                                      alignment:
                                                          Alignment.topRight,
                                                      child: Padding(
                                                          padding: getPadding(
                                                              left: 10,
                                                              bottom: 10),
                                                          child: Image.asset(
                                                              ImageConstant
                                                                  .imgClosedeye1,
                                                              height:
                                                                  getVerticalSize(
                                                                      21.00),
                                                              width:
                                                                  getHorizontalSize(
                                                                      45.00),
                                                              fit: BoxFit
                                                                  .fill))),
                                                )
                                              ]))),
                                  Align(
                                      alignment: Alignment.centerLeft,
                                      child: Padding(
                                          padding: getPadding(
                                              left: 36, top: 24, right: 36),
                                          child: Text("Confirm Password",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtAmaranthRegular16
                                                  .copyWith()))),
                                  Align(
                                      alignment: Alignment.centerRight,
                                      child: Container(
                                          height: getVerticalSize(27.00),
                                          width: getHorizontalSize(269.00),
                                          margin: getMargin(
                                              left: 44, top: 5, right: 44),
                                          child: Stack(
                                              alignment: Alignment.topRight,
                                              children: [
                                                CustomTextFormField(
                                                    width: 269,
                                                    focusNode: FocusNode(),
                                                    controller: controller
                                                        .lock1Controller,
                                                    hintText:
                                                        "Repeat your new password",
                                                    textInputAction:
                                                        TextInputAction.done,
                                                    alignment:
                                                        Alignment.centerLeft,
                                                    prefix: Container(
                                                        margin: getMargin(
                                                            right: 10,
                                                            bottom: 7),
                                                        child: SvgPicture.asset(
                                                            ImageConstant
                                                                .imgGroup361,
                                                            fit: BoxFit.fill)),
                                                    prefixConstraints:
                                                        BoxConstraints(
                                                            minWidth:
                                                                getSize(20.00),
                                                            minHeight:
                                                                getSize(20.00)),
                                                    // validator: (value) {
                                                    //   if (value == null ||
                                                    //       (!isValidPassword(value,
                                                    //           isRequired: true))) {
                                                    //     return "Please enter valid password";
                                                    //   }
                                                    //   return null;
                                                    // },
                                                    isObscureText: true),
                                                GestureDetector(
                                                  onTap: () {
                                                    if (this
                                                            .controller
                                                            .lock1Controller
                                                            .text !=
                                                        "") {
                                                      print(
                                                          "Show password !!!!");
                                                      print(this
                                                          .controller
                                                          .lock1Controller);
                                                      CoolAlert.show(
                                                          context: context,
                                                          type: CoolAlertType
                                                              .info,
                                                          text: "Your Confirm password: " +
                                                              this
                                                                  .controller
                                                                  .lock1Controller
                                                                  .text);
                                                    }
                                                  },
                                                  child: Align(
                                                      alignment:
                                                          Alignment.topRight,
                                                      child: Padding(
                                                          padding: getPadding(
                                                              left: 10,
                                                              bottom: 10),
                                                          child: Image.asset(
                                                              ImageConstant
                                                                  .imgClosedeye1,
                                                              height:
                                                                  getVerticalSize(
                                                                      21.00),
                                                              width:
                                                                  getHorizontalSize(
                                                                      45.00),
                                                              fit: BoxFit
                                                                  .fill))),
                                                )
                                              ]))),
                                  GestureDetector(
                                    onTap: () async {
                                      print("Test Button :::");
                                      // print(this.controller.emailUser.value);
                                      // print(this.controller.userName.value);
                                      // print(this.controller.countryUser.value);
                                      var password =
                                          this.controller.lockController.text;
                                      var passwordConfirmation =
                                          this.controller.lock1Controller.text;
                                      // print(password);
                                      // print(passwordConfirmation);
                                      // final prefs = await SharedPreferences.getInstance();
                                      var imgUser = this
                                          .controller
                                          .imageUser
                                          .value
                                          .toString();
                                      print("Image File !!");
                                      print(imgUser);

                                      if (this
                                                  .controller
                                                  .userName
                                                  .value
                                                  .isEmpty ==
                                              true ||
                                          this.controller.countryUser.value ==
                                              true ||
                                          password.isEmpty == true ||
                                          passwordConfirmation.isEmpty ==
                                              true ||
                                          image!.path.toString().isEmpty ==
                                              true) {
                                        CoolAlert.show(
                                          context: context,
                                          type: CoolAlertType.warning,
                                          text:
                                              'You should complete all the fields !',
                                        );
                                      } else {
                                        if (password != passwordConfirmation) {
                                          CoolAlert.show(
                                            context: context,
                                            type: CoolAlertType.error,
                                            text: 'Check your password !',
                                          );
                                        } else {
                                          var valUserName;
                                          var valCountry;
                                          var picture;
                                          if (this
                                                  .controller
                                                  .userController
                                                  .text
                                                  .isEmpty ==
                                              true) {
                                            valUserName = this
                                                .controller
                                                .userName
                                                .value
                                                .toString();
                                          } else {
                                            valUserName = this
                                                .controller
                                                .userController
                                                .text
                                                .toString();
                                          }
                                          if (this
                                                  .controller
                                                  .languageController
                                                  .text
                                                  .isEmpty ==
                                              true) {
                                            valCountry = this
                                                .controller
                                                .countryUser
                                                .toString();
                                          } else {
                                            valCountry = this
                                                .controller
                                                .languageController
                                                .text
                                                .toString();
                                          }

                                          // if(image!.path.toString().isEmpty == true){
                                          //   print("From Desktop");
                                          //   picture = http.MultipartFile.fromBytes('image',
                                          //   (await rootBundle.load('assets/images/AgronoMek.png')).buffer.asUint8List(),
                                          //   filename: 'AgronoMek.png',
                                          //   contentType: new MediaType('image', 'png')
                                          //   );
                                          // }
                                          // else{
                                          //   print("From Galery");
                                          //   var stream = http.ByteStream(DelegatingStream.typed(image!.openRead()));
                                          //   var length =  await image!.length();
                                          //   print(stream);
                                          //   print(image!.path);
                                          //   picture = new http.MultipartFile('image', stream, length,filename: image!.path,
                                          //   contentType: new MediaType('image', 'png'));
                                          // }
                                          print("From Galery");
                                          var stream = http.ByteStream(
                                              DelegatingStream.typed(
                                                  image!.openRead()));
                                          var length = await image!.length();
                                          print(stream);
                                          print(image!.path);
                                          picture = new http.MultipartFile(
                                              'image', stream, length,
                                              filename: image!.path,
                                              contentType: new MediaType(
                                                  'image', 'png'));

                                          var urlSendUpdateProfile = Uri.parse(
                                              'http://37.59.204.222/api/user/UpdateUser');

                                          var requestUpdateUser =
                                              http.MultipartRequest(
                                                  "PUT", urlSendUpdateProfile);

                                          requestUpdateUser.fields['userName'] =
                                              valUserName;
                                          requestUpdateUser.fields['email'] =
                                              this
                                                  .controller
                                                  .emailUser
                                                  .value
                                                  .toString();
                                          requestUpdateUser.fields['country'] =
                                              valCountry;
                                          requestUpdateUser.fields['password'] =
                                              password;

                                          requestUpdateUser.files.add(picture);

                                          requestUpdateUser
                                              .send()
                                              .then((responseUpdateUser) async {
                                            if (responseUpdateUser.statusCode ==
                                                200) {
                                              responseUpdateUser.stream
                                                  .bytesToString()
                                                  .then(((value) {
                                                // print(value);
                                                this
                                                    .controller
                                                    .lock1Controller
                                                    .clear();
                                                this
                                                    .controller
                                                    .lockController
                                                    .clear();
                                                // CoolAlert.show(
                                                //     context: context,
                                                //     type: CoolAlertType.success,
                                                //     text:
                                                //         "The modification are update successfully !!");
                                                var tokenRe =
                                                    Get.arguments['token'];
                                                print(tokenRe);
                                                Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                        builder: (context) =>
                                                            Homemodel2pageScreen(
                                                                "",
                                                                tokenRe,
                                                                "",
                                                                "update an user")));
                                              }));
                                              print("Very Good !!");
                                            } else {
                                              print("An error");
                                            }
                                          });

                                          // var responseUpdateProfile = await http.put(
                                          //     urlSendUpdateProfile,
                                          //     body: {
                                          //       'userName': valUserName,
                                          //       'email': this.controller.emailUser,
                                          //       'image': imgUser,
                                          //       'country': valCountry,
                                          //       'password': password
                                          //     });

                                        }
                                      }
                                    },
                                    child: CustomButton(
                                        width: 329,
                                        text: "Update",
                                        margin: getMargin(
                                            left: 28,
                                            top: 63,
                                            right: 18,
                                            bottom: 20),
                                        alignment: Alignment.center),
                                  )
                                ]))))))));
  }

  onTapImgArrowleft(BuildContext context) {
    var tokenRe = Get.arguments['token'];
    print("The tokenUser $tokenRe");
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => Homemodel2pageScreen("", tokenRe, "", "")));
  }
  // getInformationOfUser(BuildContext context) async{

  // }
}

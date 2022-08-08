import 'package:agronomek_app/core/app_export.dart';
import 'package:agronomek_app/theme/app_style.dart';
import 'package:cool_alert/cool_alert.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:image_picker/image_picker.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:http/http.dart' as http;
import 'package:http_parser/http_parser.dart';
import 'dart:convert';
import 'dart:io';
import 'package:path/path.dart';
import 'package:async/async.dart';

class LeafDiseasesScreen extends StatefulWidget {
  final idGreenHouse;
  const LeafDiseasesScreen({
    Key? key,
    this.idGreenHouse,
    required this.title,
  }) : super(key: key);
  final String title;
  @override
  State<LeafDiseasesScreen> createState() => _LeafDiseasesScreenState();
}

class _LeafDiseasesScreenState extends State<LeafDiseasesScreen>
    with SingleTickerProviderStateMixin {
  File? image;
  late String classOfImage="";
  late String confOfImage="";
  // Future pickImageC() async {
  //   try {
  //     final image = await ImagePicker().pickImage(source: ImageSource.camera);

  //     if (image == null) return;

  //     final imageTemp = File(image.path);

  //     setState(() => this.image = imageTemp);

      
  //   } on PlatformException catch (e) {
  //     print('Failed to pick image: $e');
  //   }
  // }

    Future pickImageC() async {
    try {
      var urlDetectLeafDisease = Uri.parse('http://37.59.204.222/predict');
      final image = await ImagePicker().pickImage(source: ImageSource.camera);

      if (image == null) return;

      final imageTemp = File(image.path);

      setState(() => this.image = imageTemp);
      var requestLeafDeseasesDetect =
          http.MultipartRequest("POST", urlDetectLeafDisease);
      var stream =
          http.ByteStream(DelegatingStream.typed(imageTemp!.openRead()));
      var length = await imageTemp!.length();
      var picture = new http.MultipartFile('file', stream, length,
          filename: imageTemp!.path,
          contentType: new MediaType('file', 'png'));
      requestLeafDeseasesDetect.files.add(picture);
      requestLeafDeseasesDetect.send().then((responseLeafDeseasesDetect) async {
        if (responseLeafDeseasesDetect.statusCode == 200) {
          print("Yalla !!!");
          responseLeafDeseasesDetect.stream.bytesToString().then((value) {
            final body = json.decode(value);
            var className = body['class'];
            var confidence = body['confidence'];
            print(value);
            print(className);
            print(confidence);
            setState(() {
              classOfImage = className;
              confOfImage = confidence.toString();
            });
          });
          print(responseLeafDeseasesDetect);
        } else {
          print("There is an error");
        }
      });
    } on PlatformException catch (e) {
      print('Failed to pick image: $e');
    }
  }


  Future pickImage() async {
    try {
      var urlDetectLeafDisease = Uri.parse('http://37.59.204.222/predict');
      final image = await ImagePicker().pickImage(source: ImageSource.gallery);

      if (image == null) return;

      final imageTemp = File(image.path);

      setState(() => this.image = imageTemp);
      var requestLeafDeseasesDetect =
          http.MultipartRequest("POST", urlDetectLeafDisease);
      var stream =
          http.ByteStream(DelegatingStream.typed(imageTemp!.openRead()));
      var length = await imageTemp!.length();
      var picture = new http.MultipartFile('file', stream, length,
          filename: imageTemp!.path,
          contentType: new MediaType('file', 'png'));
      requestLeafDeseasesDetect.files.add(picture);
      requestLeafDeseasesDetect.send().then((responseLeafDeseasesDetect) async {
        if (responseLeafDeseasesDetect.statusCode == 200) {
          print("Yalla !!!");
          responseLeafDeseasesDetect.stream.bytesToString().then((value) {
            final body = json.decode(value);
            var className = body['class'];
            var confidence = body['confidence'];
            print(value);
            print(className);
            print(confidence);
            setState(() {
              classOfImage = className;
              confOfImage = confidence.toString();
            });
          });
          print(responseLeafDeseasesDetect);
        } else {
          print("There is an error");
        }
      });
    } on PlatformException catch (e) {
      print('Failed to pick image: $e');
    }
  }

  //   @override
  // void initState() {
  //   super.initState();
  //   CoolAlert.show(
  //     context: context,
  //     type: CoolAlertType.info,
  //     text: "You must go around your GreenHouse to detect the leaf"
  //     );
  // }

  @override
  Widget build(BuildContext context) {
    // var urlDetectLeafDisease = Uri.parse('http://37.59.204.222/predict');
    return Scaffold(
      backgroundColor: ColorConstant.gray500,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text("Leaf Disease Prediction App",
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.center,
                style: AppStyle.textstylerobotocondensedregular25HomePageModel2
                    .copyWith(fontSize: getFontSize(20))),
            // image != null ? Text("Unfortunately we found : "):Text(""),
            SizedBox(
              height: 20,
            ),
            image != null
                ? Image.file(image!)
                : Text(
                    "Use below buttons to select to \n picture of a Leaf Disease"),
            // image != null ? Text("Unfortunately we found : "+classOfImage+"\n Confidence: "+confOfImage+" %") :
            //  Text(""),
             image != null && classOfImage!=null && confOfImage!=null? Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text("Label: "+classOfImage, overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.center,
                style: AppStyle.textstylerobotocondensedregular25HomePageModel2
                    .copyWith(fontSize: getFontSize(10))),
                Text("Confidence: "+confOfImage, overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.center,
                style: AppStyle.textstylerobotocondensedregular25HomePageModel2
                    .copyWith(fontSize: getFontSize(20)))
              ],
              
             ): Text("")
          ],
        ),
      ),
      floatingActionButton: SpeedDial(
        icon: Icons.ads_click_outlined,
        children: [
          SpeedDialChild(
              onTap: () async {
                pickImageC();
              },
              child: const Icon(Icons.camera),
              label: ('Pick Image from Camera'),
              backgroundColor: Colors.white),
          SpeedDialChild(
              onTap: () async {
                pickImage();
              },
              child: const Icon(Icons.image_search_outlined),
              label: ('Pick Image from Gallery'),
              backgroundColor: Colors.white),
        ],
      ),
    );
  }
}

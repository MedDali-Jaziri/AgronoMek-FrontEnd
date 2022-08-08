import 'dart:async';
import 'dart:convert';

import 'package:agronomek_app/core/app_export.dart';
import 'package:agronomek_app/screens/tempandhum_screen/CircleProgress.dart';
import 'package:agronomek_app/theme/app_style.dart';
import 'package:cool_alert/cool_alert.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:slide_to_act/slide_to_act.dart';

Timer? timer;

class TempAndHumScreen extends StatefulWidget {
  final idGreenHouse;
  const TempAndHumScreen({Key? key, this.idGreenHouse}) : super(key: key);

  @override
  State<TempAndHumScreen> createState() => _TempAndHumScreenState();
}

class _TempAndHumScreenState extends State<TempAndHumScreen>
    with SingleTickerProviderStateMixin {
  bool isFinished = false;
  bool isLoading = false;
  bool powerOnVentiolo = false;
  bool powerOffVentiolo = false;

  late AnimationController progressController;
  late Animation<double> tempAnimation;
  late Animation<double> humidityAnimation;

  getTheDataFromFireBase() async {
    var list = [];
    _databaseReference =
        FirebaseDatabase.instance.ref('AgronoMekDB/${widget.idGreenHouse}');
    DatabaseEvent event = await _databaseReference.once();
    print(event.snapshot.value);
    final data = jsonDecode(jsonEncode(event.snapshot.value));
    print(data["Temperature"]);
    print(data["Humidity"]);
    list.add(data["Temperature"]);
    list.add(data["Humidity"]);
    return list;
  }

  late DatabaseReference _databaseReference;

  @override
  void initState() {
    super.initState();
    getTheDataFromFireBase().then((value) {
      print("The value of String !!");
      print(value[0]);
      print(value[1]);
      if(value[0]>=25){
        CoolAlert.show(context: context,
        type: CoolAlertType.info,
        text: "You should turn on your ventilator");
      }
      isLoading = true;
      _DashboardInit(value[0].toDouble(), value[1].toDouble());
    });
  }

  _DashboardInit(double temp, double humid) {
    progressController = AnimationController(
        vsync: this, duration: Duration(milliseconds: 5000)); //5s

    tempAnimation =
        Tween<double>(begin: -50, end: temp).animate(progressController)
          ..addListener(() {
            setState(() {});
          });

    humidityAnimation =
        Tween<double>(begin: 0, end: humid).animate(progressController)
          ..addListener(() {
            setState(() {});
          });

    progressController.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ColorConstant.gray500,
        body: Stack(
          children: [
            // GestureDetector(
            //   onTap: () {
            //     print("Kick back");
            //   },
            //   child: Align(
            //       alignment: Alignment.topLeft,
            //       child: Padding(
            //           padding:
            //               getPadding(left: 23, top: 42, right: 23, bottom: 42),
            //           child: Container(
            //               height: getVerticalSize(19.00),
            //               width: getHorizontalSize(11.00),
            //               child: SvgPicture.asset(ImageConstant.imgArrowleft,
            //                   fit: BoxFit.fill)))),
            // ),
            Center(
                child: isLoading
                    ? Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Text("RealTime Temperature and Humidity \n in ${widget.idGreenHouse}",  overflow: TextOverflow.ellipsis, textAlign: TextAlign.center,style:AppStyle.textstylerobotocondensedregular25HomePageModel2.copyWith(fontSize: getFontSize(20))),
                          Align(
                            alignment: Alignment.topRight,
                            child: FloatingActionButton(
                            onPressed: () async{
                              _databaseReference = FirebaseDatabase.instance.ref('AgronoMekDB/${widget.idGreenHouse}');

                              await _databaseReference.update({
                                "Ventillation": false
                              });
                            },
                            child: Icon(
                              Icons.power_off_rounded,
                              color: Colors.redAccent,
                            ),
                            backgroundColor: Colors.white70,
                            splashColor: Colors.amber,
                          )
                          ),
                          CustomPaint(
                            foregroundPainter:
                                CircleProgress(tempAnimation.value, true),
                            child: Container(
                              width: 200,
                              height: 200,
                              child: Center(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Text('Temperature'),
                                    Text(
                                      '${tempAnimation.value.toInt()}',
                                      style: TextStyle(
                                          fontSize: 50,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      '°C',
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          CustomPaint(
                            foregroundPainter:
                                CircleProgress(humidityAnimation.value, false),
                            child: Container(
                              width: 200,
                              height: 200,
                              child: Center(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Text('Humidity'),
                                    Text(
                                      '${humidityAnimation.value.toInt()}',
                                      style: TextStyle(
                                          fontSize: 50,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      '%',
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ), 
                          SlideAction(
                            onSubmit: (() async{
                             _databaseReference = FirebaseDatabase.instance.ref('AgronoMekDB/${widget.idGreenHouse}');

                              await _databaseReference.update({
                                "Ventillation": true
                              });
                            }),
                            text: "Slide to power on ",
                            innerColor: Colors.green,
                            outerColor: ColorConstant.gray500,
                            elevation: 3,
                            borderRadius: 25,
                            alignment: Alignment.center,
                            reversed: false,
                            sliderButtonIcon: Icon(Icons.wind_power_sharp),
                          )
                        
                        ],
                      )
                    : Text(
                        'Loading...',
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      )),
          ],
        ));
  }
}

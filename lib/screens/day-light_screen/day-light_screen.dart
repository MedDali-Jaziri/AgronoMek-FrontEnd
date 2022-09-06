import 'dart:convert';

import 'package:day_night_switcher/day_night_switcher.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';

/// The main widget.
class DayNightScreen extends StatefulWidget {
  final idGreenHouse;
  @override
  const DayNightScreen({Key? key, this.idGreenHouse}) : super(key: key);
  
  State<StatefulWidget> createState() => _DayNightSwitcherState();

}

/// The main widget state.
class _DayNightSwitcherState extends State<DayNightScreen> {
  /// Whether dark mode is enabled.
  bool isDarkModeEnabled = true;

  getTheDataFromFireBase() async {
    var list = [];
    _databaseReference =
        FirebaseDatabase.instance.ref('AgronoMekDB/${widget.idGreenHouse}');
    DatabaseEvent event = await _databaseReference.once();
    print(event.snapshot.value);
    final data = jsonDecode(jsonEncode(event.snapshot.value));
    print(data["Light"]);
    list.add(data["Light"]);
    return list;
  }

  late DatabaseReference _databaseReference;

  @override
  void initState() {
    super.initState();
    getTheDataFromFireBase().then((value) {
      print("The value of String !!");
      print(value[0]);

      if(value[0] >=250){
        setState(() {
          this.isDarkModeEnabled = false;
        });
      }
      else{
        setState(() {
          this.isDarkModeEnabled = true;
        });
      }
      // if(value[0]>=25 && value[2]==false){
      //   CoolAlert.show(context: context,
      //   type: CoolAlertType.info,
      //   text: "You should turn on your ventilator");
      // }
      // if(value[2]==true){
      //   this.powerOnVentiolo = false;
      //   this.powerOffVentiolo = true;
      // }
      // else{
      //   this.powerOnVentiolo = true;
      //   this.powerOffVentiolo = false;
      // }
      // isLoading = true;
      // _DashboardInit(value[0].toDouble(), value[1].toDouble());
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // title: 'Day / night switcher example',
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark().copyWith(
        appBarTheme: AppBarTheme(color: const Color(0xFF253341)),
        scaffoldBackgroundColor: const Color(0xFF15202B),
      ),
      themeMode: isDarkModeEnabled ? ThemeMode.dark : ThemeMode.light,
      home: Scaffold(
        body: SizedBox.expand(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              DayNightSwitcher(
                isDarkModeEnabled: isDarkModeEnabled, onStateChanged: (bool isDarkModeEnabled) {  },
              ),
              Padding(
                padding: EdgeInsets.only(top: 2),
                child: DayNightSwitcherIcon(
                  isDarkModeEnabled: isDarkModeEnabled, onStateChanged: (bool isDarkModeEnabled) {  },
                  // onStateChanged: onStateChanged,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10),
                child: Text('AgronoMek is on ' +
                    (isDarkModeEnabled ? 'Night Mode' : 'Day Mode') +
                    '.'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Called when the state (day / night) has changed.
  void onStateChanged(bool isDarkModeEnabled) {
    setState(() {
      this.isDarkModeEnabled = isDarkModeEnabled;
    });
  }
}
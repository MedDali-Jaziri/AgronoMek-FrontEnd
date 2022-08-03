import 'package:agronomek_app/core/app_export.dart';
import 'package:agronomek_app/screens/homemodel2page_screen/homemodel2page_screen.dart';
import 'package:cool_alert/cool_alert.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapScreen extends StatefulWidget {
  final listOfLatAndLong;
  final resultOfGreenHouseName;
  final tokenOfUser;
  final varLogin;
  const MapScreen({Key? key,this.varLogin, this.tokenOfUser, this.listOfLatAndLong, this.resultOfGreenHouseName}) : super(key: key);

  @override
  State<MapScreen> createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  final List<Map<String, dynamic>> myList = <Map<String, dynamic>>[];

  final Map<String, Marker> _markers = {};

  Future<void> _onMapCreated(GoogleMapController controller) async {
    print("Test1");
    for(int i1=0;i1<widget.listOfLatAndLong.length;i1++){
      print(widget.listOfLatAndLong[i1]["Latitude"]);
      print(".........");
      print(widget.listOfLatAndLong[i1]["Longitude"]);
      myList.add({
        "lat":widget.listOfLatAndLong[i1]["Latitude"],
        "lng":widget.listOfLatAndLong[i1]["Longitude"],
        "name":widget.resultOfGreenHouseName[i1]
        });
    }
    _markers.clear();
    setState(() {
      for (int i = 0; i < myList.length; i++) {
        print("For Loop");
        final marker = Marker(
          markerId: MarkerId(myList[i]['name']),
          position: LatLng(myList[i]['lat'], myList[i]['lng']),
          infoWindow: InfoWindow(
              title: myList[i]['name'],
              snippet: "Click here",
              onTap: () {
                print("${myList[i]['name']}");
                print("${myList[i]['lat']}, ${myList[i]['lng']}");
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Homemodel2pageScreen(
                            "", widget.tokenOfUser,myList[i]['name'],"")));
              }),
          onTap: () {
            print("Clicked on marker");
          },
        );
        print("${myList[i]['lat']}, ${myList[i]['lng']}");
        _markers[myList[i]['name']] = marker;
      }
    });
  }



  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration.zero, () => getTokenId(context));
    return WillPopScope(
        onWillPop: () async {
          ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
              content: Text("You can't Back of page, if you want Logout !!")));
          return false;
        },
        child: Scaffold(
          body: GoogleMap(
            onMapCreated: _onMapCreated,
            initialCameraPosition:
                CameraPosition(target: LatLng(34.2758346, 9.7566934), zoom: 7),
            myLocationButtonEnabled: true,
            zoomControlsEnabled: false,
            markers: _markers.values.toSet(),
          ),
          floatingActionButton: FloatingActionButton.extended(
            onPressed: () {
              print(widget.tokenOfUser);
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          Homemodel2pageScreen("", widget.tokenOfUser, "","")));
            },
            // onPressed: _goToAgronoMek(context),
            label: Text('To AgronoMek!'),
            backgroundColor: ColorConstant.lightGreenA700,
            icon: Icon(Icons.warehouse_outlined),
          ),
        ));
    // return GoogleMap(
    //   onMapCreated: _onMapCreated,
    //   initialCameraPosition: CameraPosition(target: LatLng(34.2758346, 9.7566934),zoom: 7),
    //   myLocationButtonEnabled: true,
    //   zoomControlsEnabled: false,
    //   markers: _markers.values.toSet(),
    // )
    // ;
  }

  getTokenId(BuildContext context) async {
    print("This is the value of token of our user");
    print(widget.tokenOfUser);
    print(widget.listOfLatAndLong);

    if (widget.varLogin.isEmpty == false) {
      CoolAlert.show(
        context: context,
        type: CoolAlertType.success,
        text: 'Welcome in AgronoMek!!',
      );
      print("Welcome in AgronoMek!!");
    }
  }
}
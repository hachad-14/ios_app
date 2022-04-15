// ignore_for_file: prefer_const_constructors, unnecessary_null_comparison
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class LocationScreen extends StatefulWidget {
  @override
  LocationScreenApi createState() => LocationScreenApi();
}

class LocationScreenApi extends State<LocationScreen> {

  CameraPosition vegasPosition = CameraPosition(target: LatLng(36.0953103, -115.1992098), zoom: 10);

  String currentAdress = "Mon Adresse";
  Position? currentposition;

  Future<Position> _determinePosition() async {
    bool serviceEnabled;
    LocationPermission permission;

    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if(!serviceEnabled) {
      Fluttertoast.showToast(msg: 'Activez votre localisation');
    }
    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        Fluttertoast.showToast(msg: "Votre localisation n'est pas activée");
      }
    }
    if (permission == LocationPermission.deniedForever) {
      Fluttertoast.showToast(msg: 'Permisson is denied for ever');
    }
    Position position = await Geolocator.getCurrentPosition(
      desiredAccuracy: LocationAccuracy.high
    );
    try {
      List<Placemark> placemarks = await placemarkFromCoordinates(position.latitude, position.longitude);
      Placemark place =  placemarks[0];
      setState(() {
        currentposition = position;
        currentAdress = "${place.locality}, ${place.street}, ${place.postalCode}, ${place.country}";
      });
    } catch (e) {
      print(e);
    }
    throw(e);
}

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.grey[600],
        body: ListView(children: <Widget>[
          Align(
            alignment: Alignment(0, 0),
            child: Container(
              margin: const EdgeInsets.only(top:30),
              height: 60,
              width: 380,
              decoration:
              BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(20),
              boxShadow: [BoxShadow(color: Colors.black.withOpacity(0.3),spreadRadius: 0.5,blurRadius: 2, offset: Offset(0, 1), )]
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,              
                children: [
                  IconButton(
                    icon: Icon(Icons.arrow_back_ios),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 120, left: 80),
                    child: Text("Project b0.1", style: TextStyle(fontSize: 20),),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment(0, 0),
            child: Container(
              height: 100,
              width: 380,
              constraints: BoxConstraints(
                maxHeight: double.infinity,
              ),
              decoration:
              BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(20),
                boxShadow: [BoxShadow(color: Colors.black.withOpacity(0.3),spreadRadius: 0.5,blurRadius: 2, offset: Offset(0, 1), )]
              ),
              margin: const EdgeInsets.only(top:100),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,              
                  children: [
                  Text("Vous êtes actuellement au :", style: TextStyle(fontSize: 20, color: Colors.black)),
                  Text(currentAdress),
                  currentposition!=null? Text("Latitude" + currentposition!.latitude.toString()):Container(),
                  currentposition!=null? Text("Longitude" + currentposition!.longitude.toString()):Container(),
                  ElevatedButton(
                    child: Text("Localiser"),
                    onPressed: () {
                      _determinePosition();
                    },
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment(0, 0),
            child: Container(
              margin: const EdgeInsets.only(top:30.0),
              height: 200,
              width: 380,
              decoration:
              BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(20),
                boxShadow: [BoxShadow(color: Colors.black.withOpacity(0.3),spreadRadius: 0.5,blurRadius: 2, offset: Offset(0, 1), )]
              ),
              child: InkWell(
                onTap: () async {
                  try {
                    child: GoogleMap(
                      mapType: MapType.normal,
                      initialCameraPosition: vegasPosition,
                      myLocationButtonEnabled: true,
                  );
                  } catch (e) {
                    print("fail to put google maps on screen");
                  }
                },
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:external_app_launcher/external_app_launcher.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.grey,
        body: ListView(children: <Widget>[
          Align(
            alignment: Alignment(0, 0),
            child: Container(
              margin: const EdgeInsets.only(top:30.0),
              height: 60,
              width: 380,
               decoration: BoxDecoration( borderRadius: BorderRadius.circular(20),color: Colors.white,),
              child: Center(
                child: Text('Apps Opener',style: TextStyle(fontSize: 20),),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}

// ignore_for_file: prefer_const_constructors, unnecessary_null_comparison, non_constant_identifier_names, avoid_print

import 'package:flutter/material.dart';
class ServerScreen extends StatefulWidget {
  const ServerScreen({Key? key}) : super(key: key);

  @override
  ServerScreenApi createState() => ServerScreenApi();
}

class ServerScreenApi extends State<ServerScreen> {

  @override
  Widget build(BuildContext context) {
    throw UnimplementedError();
  }
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
      ]),
    ),
  );
}
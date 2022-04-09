// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:external_app_launcher/external_app_launcher.dart';
import 'package:page_transition/page_transition.dart';

import 'main.dart';

class SecondScreen extends StatelessWidget {
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
                        Navigator.push(context,
                        //CupertinoPageRoute(builder: (context) => SecondScreen()));
                        PageTransition(
                          child: MyApp(),
                          type: PageTransitionType.leftToRight,
                          duration: Duration(milliseconds: 250),
                          inheritTheme: true,
                          ctx: context
                          ),
                        );
                      },
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 120, left: 80),
                      child: Text("Apps Opener", style: TextStyle(fontSize: 20),),
                    ),
                ],
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
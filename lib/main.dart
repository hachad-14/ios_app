// ignore_for_file: prefer_const_constructors, unused_import
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'screens/location.dart';
import 'api/local_auth_api.dart';

Future<void> main() async {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
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
              margin: const EdgeInsets.only(top:30.0),
              height: 60,
              width: 380,
              decoration:
              BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(20),
              boxShadow: [BoxShadow(color: Colors.black.withOpacity(0.3),spreadRadius: 0.5,blurRadius: 2, offset: Offset(0, 1), )]
              ),
              child: Center(
                child: Text('Project b0.1',style: TextStyle(fontSize: 20),),
              ),
            ),
          ),
          Align(
            //location//
            alignment: Alignment(-0.9, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,              
              children: [
                Container(
                  margin: const EdgeInsets.only(top:50),
                  height: 180,
                  width: 180,
                  decoration:
                  BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(20),
                    boxShadow: [BoxShadow(color: Colors.black.withOpacity(0.3),spreadRadius: 0.5,blurRadius: 2, offset: Offset(0, 1), )]
                  ),
                  child: InkWell(
                    onTap: () async {
                      //final isAuthentificated = await LocalAuthApi.authenticate();
                      //if (isAuthentificated) {
                      //  Navigator.push(context,
                      //    CupertinoPageRoute(builder:(context) => LocationScreen()),
                      //  );
                      //}
                      Navigator.push(context,
                         CupertinoPageRoute(builder:(context) => LocationScreen()),
                      );
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,    
                      children: [
                        Text("Location", style: TextStyle(fontSize: 20)),
                        Padding(
                          padding: EdgeInsets.only(top: 0),
                          child: Image.asset('assets/images/location.png',fit: BoxFit.cover,height: 100,),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Container(
                    margin: const EdgeInsets.only(top:50),
                    height: 180,
                    width: 180,
                    decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(20),
                      boxShadow: [BoxShadow(color: Colors.black.withOpacity(0.3),spreadRadius: 0.5,blurRadius: 2, offset: Offset(0, 1))]
                    ),
                    child: InkWell(
                    onTap: () async {
                      //final isAuthentificated = await LocalAuthApi.authenticate();
                      //if (isAuthentificated) {
                      //  Navigator.push(context,
                      //    CupertinoPageRoute(builder:(context) => LocationScreen()),
                      //  );
                      //}
                      Navigator.push(context,
                         CupertinoPageRoute(builder:(context) => LocationScreen()),
                      );
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,    
                      children: [
                        Text("Firebase Server", style: TextStyle(fontSize: 20)),
                        Padding(
                          padding: EdgeInsets.only(top: 20, bottom: 20),
                          child: Image.asset('assets/images/server.png',fit: BoxFit.cover,height: 60,),
                        ),
                      ],
                    ),
                  ),
                  ),
                ),
              ],
            ),
          ),
          Align(
           alignment: Alignment(-0.9, 0),
           child: Row(
            mainAxisAlignment: MainAxisAlignment.center,              
            children: [
             Container(
               child: Text("Ubuntu Controller", style: TextStyle(),textAlign: TextAlign.center,),
               margin: const EdgeInsets.only(top:20),
               height: 180,
               width: 180,
               decoration:
               BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(20),
               boxShadow: [BoxShadow(color: Colors.black.withOpacity(0.3),spreadRadius: 0.5,blurRadius: 2, offset: Offset(0, 1), )]
               ),
             ),
             Padding(
               padding: EdgeInsets.only(left: 20),
               child: Container(
                 child: Text("Test", style: TextStyle(),textAlign: TextAlign.center,),
                 margin: const EdgeInsets.only(top:20),
                 height: 180,
                 width: 180,
                 decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(20),
                 boxShadow: [BoxShadow(color: Colors.black.withOpacity(0.3),spreadRadius: 0.5,blurRadius: 2, offset: Offset(0, 1))]
                 ),
               ),
             ),
            ],
           ),
          ),
        ]),
      ),
    );
  }
}
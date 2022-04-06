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
              decoration:
              BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(20),
              boxShadow: [BoxShadow(color: Colors.black.withOpacity(0.3),spreadRadius: 0.5,blurRadius: 2, offset: Offset(0, 1), )]
              ),
              child: Center(
                child: Text('Apps Opener',style: TextStyle(fontSize: 20),),
              ),
            ),
          ),
          Align(
            alignment: Alignment(0, 0),
            child: Container(
              margin: const EdgeInsets.only(top:50.0),
              child: Column(
                children: [
                  ElevatedButton(
                    child: Text('Instagram',style: TextStyle(fontSize: 20),),
                    onPressed: () async {
                      await LaunchApp.openApp(
                        androidPackageName: 'net.facebook.instagram',
                        iosUrlScheme: 'instagram://app',
                        appStoreLink: 'itms-apps://itunes.apple.com/us/app/pulse-secure/id389801252',
                        openStore: true,
                  );
                      print('Instagram');
                    },
                    style: ElevatedButton.styleFrom(primary: Color.fromARGB(233, 233, 89, 80),onPrimary: Colors.black,elevation: 2,minimumSize: const Size(380, 170))
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment(0, 0),
            child: Container(
              margin: const EdgeInsets.only(top:20.0),
              child: Column(
                children: [
                  ElevatedButton(
                    child: Text('Facebook',style: TextStyle(fontSize: 20),),
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(primary: Color.fromARGB(255, 66, 103, 178),onPrimary: Colors.black,elevation: 2,minimumSize: const Size(380, 170))
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment(0, 0),
            child: Container(
              margin: const EdgeInsets.only(bottom: 20,top: 20,),
              child: Column(
                children: [
                  ElevatedButton(
                    child: Text('WhatsApp',style: TextStyle(fontSize: 20),),
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(primary: Color.fromARGB(255, 37, 211, 102),onPrimary: Colors.black,elevation: 2,minimumSize: const Size(380, 170))
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

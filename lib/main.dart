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
        appBar: AppBar(

          centerTitle: true,
          title: Text('Apps Openner'),
          leading: Icon(
            Icons.signal_cellular_alt,
            size: 30,
          ),
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              top: Radius.circular(30),
              bottom: Radius.circular(30)
            ),
          ),
        ),
        body: Center(
          child: FlatButton(
            color: Colors.black,
            textColor: Colors.white,
            onPressed: () async {
              await LaunchApp.openApp(
                  androidPackageName: 'com.instagram.android',
                  iosUrlScheme: 'instagram://',
                  appStoreLink: 'itms-apps://itunes.apple.com/intagram',
              );
                    print('Zabbbbiiiii');
            },
            child: Text(
              'Instagram',
              style: TextStyle(fontSize: 20),
            )
          ),
        ),
      ),
    );
  }
}
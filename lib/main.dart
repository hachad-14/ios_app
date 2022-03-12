import 'package:flutter/material.dart';
import 'package:external_app_launcher/external_app_launcher.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to flutter',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Apps Openner'),
        ),
        body: Center(
          child: RaisedButton(
            color: Colors.blue,
            textColor: Colors.white,
            onPressed: () async {
              await LaunchApp.openApp(
                  androidPackageName: 'net.facebook.instagram',
                  iosUrlScheme: 'instagram://',
                  appStoreLink: 'itms-apps://itunes.apple.com',
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

class Square extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container (
      width: 100,
      height: 100,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.blueAccent,
      ),
    );
  }
}
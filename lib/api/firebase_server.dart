// ignore_for_file: prefer_const_constructors, unnecessary_null_comparison, non_constant_identifier_names, avoid_print
import 'dart:math';
import 'package:flutter/material.dart';

import 'package:firebase_core/firebase_core.dart';


class LocationScreen extends StatefulWidget {
  const LocationScreen({Key? key}) : super(key: key);

  @override
  LocationScreenApi createState() => LocationScreenApi();
}

class LocationScreenApi extends State<LocationScreen> {

  final FirebaseApp _mtApp = Firebase.initializeApp() as FirebaseApp;

  @override
  Widget build(BuildContext context) {
    throw UnimplementedError();
  }
}
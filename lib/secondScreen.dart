// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';

class ThirdScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: ListView(children: <Widget>[
          Align(
            alignment: Alignment(0, 0),
            child: Container(
              margin: const EdgeInsets.only(top:30),
              height: 210,
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
                    padding: EdgeInsets.only(right: 60, left: 50),
                    child: Text("Mcdo tah les pauvres", style: TextStyle(fontSize: 20),),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment(0, 0),
            child: Container(
              margin: const EdgeInsets.only(top:20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,              
                  children: [
                  TextButton(
                    onPressed: () {},
                    child: Text("Tout les points", style: TextStyle(color: Colors.black),),
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                          side: BorderSide(color: Colors.black)
                        )
                      )
                    )
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 30, left: 30) ,
                    child: TextButton(
                      onPressed: () {},
                      child: Text("Activez maintenant", style: TextStyle(color: Colors.black),),
                      style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                          side: BorderSide(color: Colors.black)
                        )
                      )
                    )
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text("Boissons", style: TextStyle(color: Colors.black),),
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                          side: BorderSide(color: Colors.black)
                        )
                      )
                    )
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment(-0.9, 0),
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,              
                children: [
                  Container(
                    child: Text("Big Mac", style: TextStyle(),textAlign: TextAlign.center,),
                    margin: const EdgeInsets.only(top:10),
                    height: 230,
                    width: 180,
                    decoration:
                    BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(20),
                    boxShadow: [BoxShadow(color: Colors.black.withOpacity(0.3),spreadRadius: 0.5,blurRadius: 2, offset: Offset(0, 1), )]
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Container(
                      child: Text("Filet O-fish", style: TextStyle(),textAlign: TextAlign.center,),
                      margin: const EdgeInsets.only(top:10),
                      height: 230,
                      width: 180,
                      decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(20),
                      boxShadow: [BoxShadow(color: Colors.black.withOpacity(0.3),spreadRadius: 0.5,blurRadius: 2, offset: Offset(0, 1))]
                    ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment(-0.9, 0),
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,              
                children: [
                  Container(
                    child: Text("Petite frite", style: TextStyle(),textAlign: TextAlign.center,),
                    margin: const EdgeInsets.only(top:20),
                    height: 230,
                    width: 180,
                    decoration:
                    BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(20),
                    boxShadow: [BoxShadow(color: Colors.black.withOpacity(0.3),spreadRadius: 0.5,blurRadius: 2, offset: Offset(0, 1), )]
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Container(
                      child: Text("Grande frite", style: TextStyle(),textAlign: TextAlign.center,),
                      margin: const EdgeInsets.only(top:20),
                      height: 230,
                      width: 180,
                      decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(20),
                      boxShadow: [BoxShadow(color: Colors.black.withOpacity(0.3),spreadRadius: 0.5,blurRadius: 2, offset: Offset(0, 1))]
                    ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment(-0.9, 0),
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,              
                children: [
                  Container(
                    child: Text("Menu Mabrouk", style: TextStyle(),textAlign: TextAlign.center,),
                    margin: const EdgeInsets.only(top:20, bottom: 20),
                    height: 230,
                    width: 180,
                    decoration:
                    BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(20),
                    boxShadow: [BoxShadow(color: Colors.black.withOpacity(0.3),spreadRadius: 0.5,blurRadius: 2, offset: Offset(0, 1), )]
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Container(
                      child: Text("Menu BigTasty", style: TextStyle(),textAlign: TextAlign.center,),
                      margin: const EdgeInsets.only(top:20, bottom: 20),
                      height: 230,
                      width: 180,
                      decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(20),
                      boxShadow: [BoxShadow(color: Colors.black.withOpacity(0.3),spreadRadius: 0.5,blurRadius: 2, offset: Offset(0, 1))]
                    ),
                    ),
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
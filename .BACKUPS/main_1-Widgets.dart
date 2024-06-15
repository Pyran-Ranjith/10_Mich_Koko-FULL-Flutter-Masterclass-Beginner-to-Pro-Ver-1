// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Colors.deepPurple,

          //APPBAR WIGET
          appBar: AppBar(
            backgroundColor: Colors.deepPurple[200],
            title: Center(
                child: Text(
              "My Appbar",
              style: TextStyle(
                color: Colors.white,
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            )),
            elevation: 0 //no shadows
            ,
            leading: Icon(Icons.menu),
            actions: [IconButton(onPressed: () {}, icon: Icon(Icons.logout))],
          ),

          body: 
          //CONTAINER WIGET
          Center(
            child: Container(
              height: 300,
              width: 300,
              decoration: BoxDecoration(
                  color: Colors.deepPurple,
                  // curve the corners a bit
                  borderRadius: BorderRadius.circular(20)),
              // padding: EdgeInsets.all(25),
              // padding: EdgeInsets.symmetric(horizontal: 25, vertical: 50),
              padding: EdgeInsets.only(left: 25, top: 25),
            
              //TEXT WIGET
              child: Text('Mich Koko',
              style: TextStyle(
                color: Colors.white,
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
              ),
            
              ICON WIGET
              child: Icon(Icons.favorite,
              color: Colors.white,
              size: 64,
              )
            ),
          ),

          
        )
        );
  }
}

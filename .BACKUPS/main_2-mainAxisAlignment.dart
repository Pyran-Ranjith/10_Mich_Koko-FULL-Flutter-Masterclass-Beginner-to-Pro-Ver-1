
/*
Appbar
Container
MainAxisAlignment
*/
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

        body:
            Column(
          // mainAxisAlignment: MainAxisAlignment.end/*placed at the bottom*/,
          // mainAxisAlignment:
          //     MainAxisAlignment.spaceEvenly /*spaces between boxes*/,
          // mainAxisAlignment: MainAxisAlignment.center/*placed in the middle*/,
         children: [
            // 1st box
            Container(
              height: 200,
              width: 200,
              decoration: BoxDecoration(
                color: Colors.deepPurple,
              ),
            ),

            // 2nd box
            Container(
              height: 200,
              width: 200,
              decoration: BoxDecoration(
                color: Colors.deepPurple[400],
              ),
            ),

            // 3rd box
            Container(
              height: 200,
              width: 200,
              decoration: BoxDecoration(
                color: Colors.deepPurple[200],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

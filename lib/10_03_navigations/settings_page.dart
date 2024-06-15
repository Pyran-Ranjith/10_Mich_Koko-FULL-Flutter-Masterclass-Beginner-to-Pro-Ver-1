// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,

      appBar: AppBar(
        title: Center(child: Text("Setting sPage")),
      ),

         body: Center(child: Text("Setting Page"))
 );
  }
}

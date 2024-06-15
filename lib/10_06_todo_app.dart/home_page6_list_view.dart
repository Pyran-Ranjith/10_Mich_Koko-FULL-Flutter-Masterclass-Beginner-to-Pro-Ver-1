// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';

import 'util/todo_tile.dart';

class HomePage6ListView extends StatefulWidget {
  const HomePage6ListView({super.key});

  @override
  State<HomePage6ListView> createState() => _HomePage6State();
}

class _HomePage6State extends State<HomePage6ListView> {
  // list of todo task
  List toDoList = [
    ["HomePage6ListView", true],
    ["Do Exercise", false],
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      appBar: AppBar(
        // backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        backgroundColor: Colors.yellow[200],
        // title: Center(child: Text("Home Page-6")),
        title: Center(child: Text("To-Do Using ListView Wiget")),
        elevation: 0,
      ),

      // body: Center(child: Text("Home Page-6"))

      body:
          // Using LiistView
          ListView(
            children: [
              TodoTile(
                taskName: "Make Tutorial",
                taskCompleated: true,
                onChanged: (p0) {},
              ),

              TodoTile(
                taskName: "Do Exercise",
                taskCompleated: false,
                onChanged: (p0) {},
              ),
            ],
          ),

      //     // // Using LiistView Builder
      //     ListView.builder(
      //   itemCount: toDoList.length,
      //   itemBuilder: (context, index) {
      //     return TodoTile(
      //       taskName: toDoList[index][0],
      //       taskCompleated: toDoList[index][1],
      //       onChanged: (p0) {},
      //     );
      //   },
      // ),
    );
  }
}

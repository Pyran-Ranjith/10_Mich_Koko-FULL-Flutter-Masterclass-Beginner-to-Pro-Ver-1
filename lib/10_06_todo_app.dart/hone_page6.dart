// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';

import 'util/todo_tile.dart';

class HomePage6 extends StatefulWidget {
  const HomePage6({super.key});

  @override
  State<HomePage6> createState() => _HomePage6State();
}

class _HomePage6State extends State<HomePage6> {
  // list of todo task
  List toDoList = [
    ["Make Tutorial", true],
    ["Do ExerciseYYY", false],
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      appBar: AppBar(
        // backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        backgroundColor: Colors.yellow[200],
        // title: Center(child: Text("Home Page-6")),
        title: Center(child: Text("To Do")),
        elevation: 0,
      ),

      // body: Center(child: Text("Home Page-6"))

      body:
          // // Using LiistView
          // ListView(
          //   children: [
          //     TodoTile(
          //       taskName: "Make Tutorial",
          //       taskCompleated: true,
          //       onChanged: (p0) {},
          //     ),
          //   ],
          // ),

          // // Using LiistView Builder
          ListView.builder(
        itemCount: toDoList.length,
        itemBuilder: (context, index) {
          return TodoTile(
            taskName: toDoList[index][0],
            taskCompleated: toDoList[index][1],
            onChanged: (p0) {},
          );
        },
      ),
    );
  }
}

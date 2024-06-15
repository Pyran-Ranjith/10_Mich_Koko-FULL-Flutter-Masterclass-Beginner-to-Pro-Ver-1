// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';

import 'util/dialog_box.dart';
import 'util/todo_tile.dart';

class HomePage6ListViewBuilder extends StatefulWidget {
  const HomePage6ListViewBuilder({super.key});

  @override
  State<HomePage6ListViewBuilder> createState() =>
      _HomePage6ListViewBuilderState();
}

class _HomePage6ListViewBuilderState extends State<HomePage6ListViewBuilder> {

  // textcontroler
  final _controller = TextEditingController();
  // list of todo task
  List toDoList = [
    ["HomePage6ListView", true],
    ["Do Exercise", false],
  ];

  // checkbox was tapped
  void checkBoxChanged(bool? value, int index) {
    setState(() {
      toDoList[index][1] = !toDoList[index][1];
    });
  }

// //create a new task
  void createNewTask() {
    showDialog(
      context: context,
      builder: (context) {
        return DialogBox(
            controller: _controller,
            onSave: saveNewTask,
            onCancel: () => Navigator.of(context).pop()
            );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      appBar: AppBar(
        // backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        backgroundColor: Colors.yellow[200],
        // title: Center(child: Text("Home Page-6")),
        title: Center(child: Text("To-Do Using ListViewBuilder Wiget")),
        elevation: 0,
      ),

      // floating action button
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: (createNewTask),
      ),

      body: ListView.builder(
        itemCount: toDoList.length,
        itemBuilder: (context, index) {
          return TodoTile(
            taskName: toDoList[index][0],
            taskCompleated: toDoList[index][1],
            // taskCompleated: toDoList[index][1],
            onChanged: (value) => checkBoxChanged(value, index),
          );
        },
      ),
    );
  }
}

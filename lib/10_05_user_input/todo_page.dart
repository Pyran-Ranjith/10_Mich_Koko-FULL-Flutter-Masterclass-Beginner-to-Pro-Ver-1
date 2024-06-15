// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';

class ToDoPage extends StatefulWidget {
  const ToDoPage({super.key});

  @override
  State<ToDoPage> createState() => _ToDoPageState();
}

class _ToDoPageState extends State<ToDoPage> {
  // text editing controler to get acccess to what the user typed
  TextEditingController myController = TextEditingController();

  // greeting message varible
  String greetingMessage = "";

  // greet user method
  // String useName = myController.text;
  void greetUser() {
    setState(() {
      greetingMessage = "Hello, ${myController.text}";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("ToDo Page")),
      ),

      // textfield widget
      body: Center(
          child: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // greet your message
            Text(greetingMessage),
            // textfield
            TextField(
              controller: myController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Type your name..",
              ),
            ),

            // button
            ElevatedButton(
              onPressed: greetUser,
              child: Text("Tap"),
            ),
          ],
        ),
      )),
    );
  }
}

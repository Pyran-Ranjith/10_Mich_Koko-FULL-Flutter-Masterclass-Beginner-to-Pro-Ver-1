// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';

class CounterPage extends StatefulWidget {
  const CounterPage({super.key});

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
// variable
  int _counter = 0;

// method
  void _incrementCounter() {
    // setstate rebuilds the widget
    setState(() {
      _counter++;
    });
  }
// UI (user interface)

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Counter Page"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // message
            Text("You pushed tht button this many times:"),

            // counter value
            Text(_counter.toString(),
            style: TextStyle(fontSize: 40),
            ),

            // button
            ElevatedButton(
              onPressed: _incrementCounter, 
              child: Text("Increment!"),
              )
          ],
        ),
      ),
    );
  }
}

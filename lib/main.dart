import 'package:flutter/material.dart';

import 'package:masterclass_beginner_to_pro/10_03_navigations/home_page.dart';
// import 'package:masterclass_beginner_to_pro/10_03_navigations/second_page.dart';
import 'package:masterclass_beginner_to_pro/10_03_navigations/settings_page.dart';
// import '10_02_programming_fundamentals/10_02_programming_fundamentals.dart';
import '10_03_navigations/bottom_navigator_page.dart';
import '10_03_navigations/first_page.dart';
import '10_04_stateless_statefull_widget/counter_page.dart';
import '10_05_user_input/todo_page.dart';
import '10_06_todo_app.dart/hone_page6.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
             colorScheme: ColorScheme.fromSeed(seedColor: Colors.yellow),

        useMaterial3: true,
      ),
      // home: const MyHomePage(title: '10_Mich_Koko-FULL Flutter Masterclass: Beginner to Pro'),
      home: const First_Page(title: '10_Mich_Koko Masterclass: Beginner to Pro'),
          // home: const First_Page(title: 'FULL Flutter Masterclasssssss'),
  // home:  const First_Page(),
         routes: {
        '/firstpage' :(context) =>  const First_Page(title: 'Flutter Demo Home Page'),
        '/homepage' :(context) => const HomePage(),
        '/settingspage' :(context) => const SettingsPage(),
        '/bottomnavigatorpage' :(context) => const BottomNavigatorPage(),
        '/counterpage' :(context) => const CounterPage(),
        '/todopage' :(context) => const ToDoPage(),
        '/homepage6' :(context) => const HomePage6(),
      },
 );
  }
}

class MyHomePage1 extends StatefulWidget {
  const MyHomePage1({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage1> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage1> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // TRY THIS: Try changing the color here to a specific color (to
        // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
        // change color while the other colors stay the same.
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          //
          // TRY THIS: Invoke "debug painting" (choose the "Toggle Debug Paint"
          // action in the IDE, or press "p" in the console), to see the
          // wireframe for each widget.
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

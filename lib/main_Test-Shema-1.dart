import 'package:flutter/material.dart';
import 'package:masterclass_beginner_to_pro/10_03_navigations/home_page.dart';

// import '10_03_navigations/first_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: const HomePage(title: 'Flutter Demo Home Page'),
      home: const HomePage(),
      title: 'Flutter Demo',
      // home:  HomePage(),
      theme: ThemeData(
        // colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        primarySwatch: Colors.yellow,
      ),
    );
  }
}


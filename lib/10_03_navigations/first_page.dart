// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:masterclass_beginner_to_pro/10_03_navigations/home_page.dart';
import 'package:masterclass_beginner_to_pro/10_03_navigations/profile_page.dart';
import 'package:masterclass_beginner_to_pro/10_03_navigations/settings_page.dart';
import 'package:masterclass_beginner_to_pro/10_04_stateless_statefull_widget/counter_page.dart';

import '../10_06_todo_app.dart/hone_page6.dart';

class First_Page extends StatefulWidget {
  // const First_Page({super.key});
  const First_Page({super.key, required this.title});
  final String title;

  @override
  State<First_Page> createState() => _First_PageState();
}

class _First_PageState extends State<First_Page> {
  // this keeps track of the current page to display
  int _selectedIndex = 0;

  // this method updates the new selected index
  void _navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List _pages = [
    // home page
    HomePage6(),
    // profile page
    ProfilePage(),
    // setting page
    SettingsPage(),
    // home page
    HomePage(),
    // counter page
    CounterPage(),
  ];

  @override
  Widget build(BuildContext context) {
    var scaffold = Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        // title: const Text("1st Page"),
        title: Text(widget.title),
      ),

      drawer: Drawer(
        backgroundColor: Colors.deepPurple,
        child: Column(
          children: [
            // common to place a drawer header here
            const DrawerHeader(
              child: Icon(
                Icons.favorite,
                size: 48,
              ),
            ),

            // home page6 list tile
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text('Home Page-6'),
              onTap: () {
                // pop drawer first
                Navigator.pop(context);
                // go to home page6
                Navigator.pushNamed(context, '/homepage6');
              },
            ),

            // home page list tile
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text('Home Page'),
              onTap: () {
                // pop drawer first
                Navigator.pop(context);
                // go to home page
                Navigator.pushNamed(context, '/homepage');
              },
            ),

            // Bottom Navigator Page list tile
            ListTile(
              leading: const Icon(Icons.arrow_downward),
              title: const Text('Bottom Navigator Page'),
              onTap: () {
                // pop drawer first
                Navigator.pop(context);
                // go to home page
                Navigator.pushNamed(context, '/bottomnavigatorpage');
              },
            ),

            // counter page list tile
            ListTile(
              leading: const Icon(Icons.countertops),
              title: const Text("Counter Page"),
              onTap: () {
                // go to counter page
                Navigator.pushNamed(context, '/counterpage');
              },
            ),

            // todo page list tile
            ListTile(
              leading: const Icon(Icons.document_scanner),
              title: const Text("ToDo Page"),
              onTap: () {
                // go to counter page
                Navigator.pushNamed(context, '/todopage');
              },
            ),

            // setting page list tile
            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text("Setting sPage"),
              onTap: () {
                // go to setting page
                Navigator.pushNamed(context, '/settingspage');
              },
            ),
          ],
        ),
      ),

      // home page list tile

      body: _pages[_selectedIndex],

      // BottomNavigatorPage
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _navigateBottomBar,
        items: const [
          // home
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            label: 'Home',
          ),

          // profile
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
            ),
            label: 'Profile',
          ),

          // counter
          // BottomNavigationBarItem(
          //   icon: Icon(
          //     Icons.countertops,
          //   ),
          //   label: 'Counter',
          // ),

          // setings
          BottomNavigationBarItem(
            icon: Icon(
              Icons.settings,
            ),
            label: 'Settings',
          ),
        ],
      ),

      // Center(
      // child: ElevatedButton(
      //   child: const Text("Go to 2nd page"),
      //   onPressed: () {
      //     // navigate to 2nd page
      //     // Navigator.push(
      //     //   context,
      //     //   MaterialPageRoute(
      //     //     builder: (context) => SecondPage(),
      //     //   ),
      //     // );

      //     Navigator.pushNamed(context, '/secondpage');
      //   },
      // ),
      // ),
    );
    return scaffold;
  }
}

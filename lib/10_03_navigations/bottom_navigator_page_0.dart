import 'package:flutter/material.dart';

class BottomNavigatorPage extends StatelessWidget {
  const BottomNavigatorPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(title: const Text("Bottom Navigator Page")),
      // body: const Center(
      //   child: Text("Bottom Navigator Page")),
      bottomNavigationBar: BottomNavigationBar(
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
          // setings
          BottomNavigationBarItem(
            icon: Icon(
              Icons.settings,
            ),
            label: 'Settings',
          ),
        ],
      ),
    );
  }
}

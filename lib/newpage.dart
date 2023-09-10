import 'package:flutter/material.dart';
import 'package:text/Navpage.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Newpage extends StatefulWidget {
  Newpage({Key? key}) : super(key: key);

  @override
  _NewpageState createState() => _NewpageState();
}

class _NewpageState extends State<Newpage> {
  int currentIndex = 0;
  final screens = [
    Navpage(),
    Center(child: Text("Profile")),
    Center(child: Text("Settings")),
   
  ];

  late WebViewController controller;
  double progress = 0.0;

  @override
  Widget build(BuildContext context) => Scaffold(
        
        body: screens[currentIndex], // Display the selected screen
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Color.fromARGB(255, 47, 78, 233),
          selectedItemColor: Colors.white,
          iconSize: 30,
          selectedFontSize: 10,
          type: BottomNavigationBarType.fixed,
          currentIndex: currentIndex,
          onTap: (index) => setState(() => currentIndex = index),
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
              ),
              label: 'Home',
              backgroundColor: Colors.red,
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
              ),
              label: 'Profile',
              backgroundColor: Colors.red,
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.settings,
              ),
              label: 'Settings',
              backgroundColor: Colors.red,
            ),
          ],
        ),
      );
}

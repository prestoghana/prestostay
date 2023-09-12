import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Newpage extends StatefulWidget {
  Newpage({Key? key}) : super(key: key);

  @override
  _NewpageState createState() => _NewpageState();
}

class _NewpageState extends State<Newpage> {
  late WebViewController controller;
  double progress = 0.0;
  int _selectedIndex = 0; 

  final List<Widget> _pages = [
    
    WebView(
      initialUrl: "https://stay.prestoghana.com/",
      javascriptMode: JavascriptMode.unrestricted,
      onPageFinished: (url) {
        // Your code when the page finishes loading
      },
    ),


    // Chat Page (Replace with your chat page content)
    Center(
      child: Text('Chat Page'),
    ),
    // Settings Page (Replace with your settings page content)
    Center(
      child: Text('Settings Page'),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        if (await controller.canGoBack()) {
          controller.goBack();
          return false;
        } else {
          return true;
        }
      },
      child: Scaffold(
        
        body: _pages[_selectedIndex], // Display the selected page
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.chat),
              label: 'Chat',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: 'Settings',
            ),
          ],
          currentIndex: _selectedIndex, // Set the current selected index
          selectedItemColor: Colors.blue, // Change the selected item color
          onTap: _onItemTapped, // Define the function to handle item tap
        ),
      ),
    );
  }

  // Function to handle item tap and change the selected page
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}




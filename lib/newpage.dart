import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Newpage extends StatefulWidget {
  Newpage({Key? key}) : super(key: key);

  @override
  _NewpageState createState() => _NewpageState();
}

class _NewpageState extends State<Newpage> {
  int currentIndex=0; 

  late WebViewController controller;
  double progress = 0.0; 



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
        
        body: Container(
          
          color: Colors.white,
          padding: EdgeInsets.only(top: 50.0),
          child: WebView(
            initialUrl: "https://stay.prestoghana.com/",
            javascriptMode: JavascriptMode.unrestricted,
            onWebViewCreated: (WebViewController webViewController) {
              controller = webViewController;
            },
            onPageFinished: (url) {
               controller.evaluateJavascript(
                "document.getElementsByTagName('nav')[0].style.display='none';");
             controller.evaluateJavascript(
                "document.getElementsByTagName('hr')[0].style.display='none';");
             
            },
            onProgress: (progress) {
              setState(() {
                this.progress = progress / 100;
              });
            },
          
          ),

         
        ),
         bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Color.fromARGB(255, 47, 78, 233),
          selectedItemColor: Colors.white,
          iconSize: 30,
          // selectedFontSize: 10,
          // unselectedFontSize: 10,
          showUnselectedLabels: false,
          type: BottomNavigationBarType.fixed,
          currentIndex: currentIndex,
          onTap: (index) => setState (() => currentIndex = index),
        items: [
          BottomNavigationBarItem(
            icon: Icon( 
              Icons.home,
            ),
            label: 'home',
            backgroundColor: Colors.red
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.message,
            ),
            label: 'chat',
            backgroundColor: Colors.red
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
            ),
            label: 'myprofile',
            backgroundColor: Colors.red
          ),
        ],
       
      ),

         
      ),
    );
  }
}
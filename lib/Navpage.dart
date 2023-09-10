import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
// import 'Navpage.dart';


class Navpage extends StatefulWidget {
  Navpage({Key? key}) : super(key: key);

  @override
  _NavpageState createState() => _NavpageState();
}

class _NavpageState extends State<Navpage> {
  int currentIndex = 0; 
  final screens = [
    Center(child: Text("Home"),),
    Center(child: Text("Profile"),),
    Container( child: Text("try and see"),),
  ];

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
      ),
      );  
  }
}
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:text/Nav.dart'; 

class Newpage extends StatefulWidget {
  Newpage({Key? key}) : super(key: key);

  @override
  _NewpageState createState() => _NewpageState();
}

class _NewpageState extends State<Newpage> {
  
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
          bottomNavigationBar: CurvedNavigationBar(
          
          index: 0,
          height: 60.0,
          items: <Widget>[
            Icon(Icons.add, size: 30),
            Icon(Icons.list, size: 30),
          
            Icon(Icons.perm_identity, size: 30),
          ],
          color: Colors.white,
          buttonBackgroundColor: Colors.white,
          backgroundColor: Color.fromARGB(255, 11, 60, 207),
          animationCurve: Curves.easeInOut,
          animationDuration: Duration(milliseconds: 600),
          onTap: (index) {
           switch (index) {
              case 0:
                // Handle the first item (Icon(Icons.add, size: 30))
                break;
              case 1:
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Text("data")),
                );
                break;
              case 2:
                // Handle the third item (Icon(Icons.perm_identity, size: 30))
                // Navigate to NewPage2 when the third item is tapped
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Text("sa")),
                );
                break;
            }
          },
          letIndexChange: (index) => true,
        ),

         
      ),
    );
  }
}
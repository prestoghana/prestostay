import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Newpage extends StatefulWidget {
  Newpage({Key? key}) : super(key: key);

  @override
  _NewpageState createState() => _NewpageState();
}

class _NewpageState extends State<Newpage> {
  late WebViewController controller;
  double progress = 0.0; // Initialize progress variable

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
             
            },

            // Track loading progress
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

// void main() {
//   runApp(
//     MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('WebView Example'),
//         ),
//         body: Newpage(),
//       ),
//     ),
//   );
// }

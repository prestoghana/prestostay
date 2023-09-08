import 'package:flutter/material.dart';
import 'package:text/splash.dart';
import 'package:text/newpage.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';

// Future<void> backroundHandler(RemoteMessage message) async {
//   print(" This is message from background");
//   print(message.notification!.title);
//   print(message.notification!.body);
// }

GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      
      navigatorKey: navigatorKey, 
      theme: ThemeData(fontFamily: 'Poppins',
      primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,),
      debugShowCheckedModeBanner: false,
      
      routes: {
      
        "/": (context) => const SplashScreen(),


        "/newpage": (context) =>  Newpage(),
       
      },
    );
  }
}



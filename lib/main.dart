import 'package:flutter/material.dart';
import 'package:text/splash.dart';
import 'package:text/newpage.dart';


GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      title: "hello",
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



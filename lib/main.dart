import 'package:flutter/material.dart';
import 'package:text/splash.dart';
import 'package:text/newpage.dart';


GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

void main() {
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
        // SplashScreen
        "/": (context) => const SplashScreen(),

        // mainpage:
        "/newpage": (context) =>  Newpage(),
        // ...
         // mainpage:
       
        // ...
      },
    );
  }
}



// void main() {
//   runApp(MaterialApp(
//     theme: ThemeData(fontFamily: 'Poppins'),
//     debugShowCheckedModeBanner: false,
//     routes: {
//       // SplashScreen
//       "/": (context) => const SplashScreen(),
      
//       // mainpage:
//       "/newpage": (context) => const Newpage(),
//       // "/intro": (context) => Intro(),

//       // // Sign, Signup, Forgot Password
//       // "/login": (context) => const Login(),
//       // "/register": (context) => const Register(),
//       // // "/registerS": (context) => const RegisterSecond(),
//       // "/forgot": (context) => const Forgot(),

//       // // Dashboard
//       // "/navigator": (context) => const Navigator(),
//       // "/dashboard": (context) => const Dashboard(),
//     },
//   ));
// }
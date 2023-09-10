import 'package:flutter/material.dart';

class Navpage extends StatefulWidget {
  const Navpage({super.key});

  @override
  State<Navpage> createState() => _NavpageState();
}

class _NavpageState extends State<Navpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sasa")
      ),
      body: Container(
       child: Text("asas"),
      ),
    );
  }
}
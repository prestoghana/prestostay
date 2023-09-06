// import 'package:badges/badges.dart';
import 'package:flutter/material.dart';

class HomeAppBar  extends StatelessWidget {
  const HomeAppBar ({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(25),
      child: Row(children: [
        // Icon(
        //   Icons.sort,
        // size:30,
        // color:Colors.blue
        // ),
        Padding(padding: EdgeInsets.only(left:5,),
        child: Text("",
        style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold,
        color: Colors.black) ,),
        ),
        Spacer(),  
        Badge( 
          // badgeColor: Colors.red,
          // padding: EdgeInsets.all(7),
          // badgeContent:Text(
          //   "3",  
          // style: TextStyle(color: Colors.white,
          // ),
          // ),
          child: InkWell(
            onTap: (){},
            child: Icon(Icons.person,
            size: 30,
            color: Colors.red,
            ),
          ) ,
        )
      ],),
    );

  }
}
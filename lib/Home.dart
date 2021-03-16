//import 'package:flutter/material.dart';
//import 'package:flutter_app/main.dart';
//
//class Home extends StatefulWidget{
//  @override
//  State<StatefulWidget> createState() => Homemy();
//
//}
//
//class Homemy extends State<Home> {
//
//  int currentstate =0;
//  final tabs =[
//    Center(child:Text('Home')),
//    Center(child:Text('Search')),
//    Center(child:Text('Post')),
//    Center(child:Text('Profile')),
//  ];
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//      appBar: AppBar(
//        title: Text("Second Route"),
//      ),
//      body: tabs[currentstate],
//      bottomNavigationBar: BottomNavigationBar(
//        currentIndex : currentstate,
//        items:[
//          BottomNavigationBarItem(
//              icon:Icon(Icons.home),
//              title: Text('Home'),
//              backgroundColor: Colors.redAccent
//          ),
//          BottomNavigationBarItem(
//              icon:Icon(Icons.search),
//              title: Text('Search'),
//              backgroundColor: Colors.yellowAccent
//          ),
//          BottomNavigationBarItem(
//              icon:Icon(Icons.add),
//              title: Text('Post'),
//              backgroundColor: Colors.green
//          ),
//          BottomNavigationBarItem(
//              icon:Icon(Icons.person),
//              title: Text('Profile'),
//              backgroundColor: Colors.blue
//          ),
//        ],
//        onTap: (index){
//          setState((){
//            currentstate = index;
//          });
//        },
//      ),
//
//
//    );
//  }
//}
////      Center(
////        child: Align(
////          alignment: Alignment.topRight,
////        child: RaisedButton(
////          color: Colors.redAccent,
////          padding: const EdgeInsets.all(4.00),
////          onPressed: () {
////            Navigator.pop(context);
////          },
////          child: Text('Go back!'),
////        ),
////
////
////      ),
////      ),
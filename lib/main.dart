import 'package:flutter/material.dart';
import 'bottom_navigatorbar_demo.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
        title: 'BottomNavigatorBottom',
        theme: ThemeData(
            primarySwatch: Colors.lightBlue
        ),
        home: BottomAppBarDemo(),
    );
  }

}

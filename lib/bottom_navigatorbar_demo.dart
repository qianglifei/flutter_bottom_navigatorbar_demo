import 'package:flutter/material.dart';

class BottomAppBarDemo extends StatefulWidget{
   _BottomAppBarDemoState createState() => _BottomAppBarDemoState();
}

class _BottomAppBarDemoState extends State<BottomAppBarDemo>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        floatingActionButton: new FloatingActionButton(
            onPressed: (){

            },
            tooltip: '草拟妹',
            child: Icon(
               Icons.title,
               color: Colors.greenAccent,
            ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomAppBar(
            color: Colors.lightBlue,
            shape: CircularNotchedRectangle(),
            child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                    IconButton(
                       icon: Icon(
                          Icons.home,
                       ),
                       color: Colors.greenAccent,
                       onPressed:(){

                       },
                    ),
                    IconButton(
                      icon: Icon(
                          Icons.account_box
                      ),
                      color: Colors.pink,
                      onPressed: (){

                      },
                    )
                ],
            ),
        ),
    );
  }
}
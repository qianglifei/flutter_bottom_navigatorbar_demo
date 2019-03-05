import 'package:flutter/material.dart';
import 'each_view.dart';

class BottomAppBarDemo extends StatefulWidget{
   _BottomAppBarDemoState createState() => _BottomAppBarDemoState();
}

class _BottomAppBarDemoState extends State<BottomAppBarDemo>{
  /// 创建视图数组
  List<Widget> _eachView;
  ///根据索引来改变视图
  int _index = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
        _eachView = List();
        _eachView..add(EachView('Home'))..add(EachView('Me'));
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(

        body: _eachView[_index],
        floatingActionButton: new FloatingActionButton(
            onPressed: (){
              Navigator.of(context).push(
                  MaterialPageRoute(
                     builder: (BuildContext context){
                        return EachView('New Page');
                     }
                  )
              );
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
                          setState(() {
                            _index = 0;
                          });
                       },
                    ),
                    IconButton(
                      icon: Icon(
                          Icons.account_box
                      ),
                      color: Colors.pink,
                      onPressed: (){
                          setState(() {
                            _index = 1;
                          });
                      },
                    )
                ],
            ),
        ),
    );
  }
}
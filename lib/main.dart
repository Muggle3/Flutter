import 'package:flutter/material.dart';
import 'star.dart';
import 'find.dart';
import 'setting.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo1',
      home: new BottomNavgationWidget(),
    );
  }
}

class BottomNavgationWidget extends StatefulWidget {
  @override
  _BottomNavgationWidgetState createState() => _BottomNavgationWidgetState();
}

class _BottomNavgationWidgetState extends State<BottomNavgationWidget> {
  int _currentIndex = 0;
  // ignore: deprecated_member_use
  List<Widget> pages = new List();
  @override
  // ignore: must_call_super
  void initState() {
    pages..add(StarPageWidget())..add(FindPageWidget())..add(SetPageWidget());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.star_border), title: new Text('常用')),
          BottomNavigationBarItem(
              icon: Icon(Icons.find_in_page_sharp), title: new Text('发现')),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings), title: new Text('设置')),
        ],
        currentIndex: _currentIndex,
        onTap: (int i) {
          //进行状态更新
          setState(() {
            _currentIndex = i;
          });
        },
      ),
    );
  }
}

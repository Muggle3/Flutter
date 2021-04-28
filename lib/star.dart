import 'package:flutter/material.dart';

class StarPageWidget extends StatefulWidget {
  @override
  _StarPageWidgetState createState() => _StarPageWidgetState();
}

class _StarPageWidgetState extends State<StarPageWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.count(
        padding: const EdgeInsets.all(10.0),
        crossAxisCount: 3,
        children: <Widget>[
          ListTile(
            title: Icon(Icons.access_time),
            subtitle: Text(
              '日期提醒',
              textAlign: TextAlign.center,
            ),
          ),
          ListTile(
            title: Icon(Icons.backup_table),
            subtitle: Text(
              '配色方案',
              textAlign: TextAlign.center,
            ),
          ),
          ListTile(
            title: Icon(Icons.ac_unit_outlined),
            subtitle: Text(
              '每日习惯',
              textAlign: TextAlign.center,
            ),
          ),
          ListTile(
            title: Icon(Icons.accessibility_new),
            subtitle: Text(
              '表情制作',
              textAlign: TextAlign.center,
            ),
          )
        ],
      ),
    );
  }
}

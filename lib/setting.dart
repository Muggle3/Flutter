import 'package:flutter/material.dart';

class SetPageWidget extends StatefulWidget {
  @override
  _SetPageWidgetState createState() => _SetPageWidgetState();
}

class _SetPageWidgetState extends State<SetPageWidget> {
  @override
  Widget build(BuildContext context) {
    List<Widget> _list = new List();
    for (int i = 0; i < titleItems.length; i++) {
      _list.add(buildListData(
          context, titleItems[i], iconItems[i], subTitleItems[i]));
    }
    // 分割线
    // var divideTiles =
    // ListTile.divideTiles(context: context, tiles: _list).toList();
    return Scaffold(
      appBar: AppBar(
        title: Text('设置'),
      ),
      body: Scrollbar(
        child: ListView.separated(
            itemBuilder: (context, item) {
              return buildListData(context, titleItems[item], iconItems[item],
                  subTitleItems[item]);
            },
            separatorBuilder: (BuildContext context, int index) =>
                new Divider(),
            itemCount: iconItems.length),
      ),
    );
  }

  Widget buildListData(BuildContext context, String titleItem, Icon iconItem,
      String subTitleItem) {
    return new ListTile(
      leading: iconItem,
      title: new Text(
        titleItem,
        style: TextStyle(fontSize: 18),
      ),
      subtitle: new Text(
        subTitleItem,
      ),
      trailing: new Icon(Icons.keyboard_arrow_right),
      onTap: () {
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return new AlertDialog(
              title: new Text(
                'ListViewAlert',
                style: new TextStyle(
                  color: Colors.black54,
                  fontSize: 18.0,
                ),
              ),
              content: new Text('您选择的item内容为:$titleItem'),
            );
          },
        );
      },
    );
  }

  // 数据源
  List<String> titleItems = <String>[
    '消息',
    '订购Pro',
    '接收通知',
    '意见反馈',
    '给我们评分',
    '推荐给朋友',
    '关于',
    'wifi_tethering',
    'wifi_lock',
    'widgets',
    'weekend',
    'web',
    '图accessible',
    'ac_unit',
  ];

  List<Icon> iconItems = <Icon>[
    new Icon(Icons.keyboard),
    new Icon(Icons.print),
    new Icon(Icons.router),
    new Icon(Icons.pages),
    new Icon(Icons.zoom_out_map),
    new Icon(Icons.zoom_out),
    new Icon(Icons.youtube_searched_for),
    new Icon(Icons.wifi_tethering),
    new Icon(Icons.wifi_lock),
    new Icon(Icons.widgets),
    new Icon(Icons.weekend),
    new Icon(Icons.web),
    new Icon(Icons.accessible),
    new Icon(Icons.ac_unit),
  ];

  List<String> subTitleItems = <String>[
    'subTitle: keyboard',
    'subTitle: print',
    'subTitle: router',
    'subTitle: pages',
    'subTitle: zoom_out_map',
    'subTitle: zoom_out',
    'subTitle: youtube_searched_for',
    'subTitle: wifi_tethering',
    'subTitle: wifi_lock',
    'subTitle: widgets',
    'subTitle: weekend',
    'subTitle: web',
    'subTitle: accessible',
    'subTitle: ac_unit',
  ];
}

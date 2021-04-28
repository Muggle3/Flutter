import 'package:flutter/material.dart';

class FindPageWidget extends StatefulWidget {
  @override
  _FindPageWidgetState createState() => _FindPageWidgetState();
}

class _FindPageWidgetState extends State<FindPageWidget> {
  @override
  Widget build(BuildContext context) {
    List<Widget> _list = new List();
    for (int i = 0; i < titleItems.length; i++) {
      _list.add(buildListData(
          context, titleItems[i], iconItems[i], subTitleItems[i]));
    }
    return Scaffold(
      appBar: AppBar(
        title: Text('功能'),
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
    '精美图片',
    '日期计算',
    '网页截图',
    '配色方案',
    '日期提醒',
    '每日习惯',
    '快递',
  ];

  List<Icon> iconItems = <Icon>[
    new Icon(Icons.photo),
    new Icon(Icons.date_range_outlined),
    new Icon(Icons.note_add),
    new Icon(Icons.color_lens),
    new Icon(Icons.lock_clock),
    new Icon(Icons.notes),
    new Icon(Icons.youtube_searched_for),
  ];

  List<String> subTitleItems = <String>[
    '海量高清无版权图',
    '计算时间区间',
    '输入网址，生成完整高清长图',
    '轻松获取顶尖配色方案',
    '记住特别时刻',
    '每天打卡，养成习惯',
    '记住自己的快递',
  ];
}

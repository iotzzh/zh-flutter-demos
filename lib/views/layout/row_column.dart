import 'package:flutter/material.dart';

class ZHRowColumn extends StatefulWidget {
  const ZHRowColumn({Key? key}) : super(key: key);
  @override
  State<StatefulWidget> createState() {
    return ZHRowColumnState();
  }
}

class ZHRowColumnState extends State<ZHRowColumn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('线性布局(Row & Column)'),
          centerTitle: true,
        ),
        body: ListView(
          shrinkWrap: true,
          padding: const EdgeInsets.all(20.0),
          children: <Widget>[
            Container(
              color: Colors.black,
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "第一行 Row",
                    style: TextStyle(
                        backgroundColor: Color.fromARGB(255, 0, 155, 155)),
                  ),
                ],
              ),
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.start,
              textDirection: TextDirection.ltr,
              children: <Widget>[
                Text("第二行:"),
                Text("你好~"),
                Text("我的名字叫: "),
                Text("张中华"),
                // Text("这行文字，由多个Text组件组成。"),
              ],
            ),
            Container(
              color: Colors.red,
              child: const Column(
                mainAxisSize: MainAxisSize.max, //无效，内层Colum高度为实际高度
                children: <Widget>[
                  Text("Column Text 1"),
                  Text("Column Text 2"),
                ],
              ),
            )
          ],
        ));
  }
}

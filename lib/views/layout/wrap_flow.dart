import 'package:flutter/material.dart';
import 'package:zh_flutter_demos/views/layout/test_flow_delegate.dart';

class ZHWarpFlow extends StatefulWidget {
  const ZHWarpFlow({Key? key}) : super(key: key);
  @override
  State<StatefulWidget> createState() {
    return ZHWarpFlowState();
  }
}

class ZHWarpFlowState extends State<ZHWarpFlow> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('流式布局(Wrap&Flow)'),
          centerTitle: true,
        ),
        body: ListView(
          shrinkWrap: true,
          padding: const EdgeInsets.all(20.0),
          children: <Widget>[
            //Flex的两个子widget按1：2来占据水平空间
            const Wrap(
              spacing: 8.0, // 主轴(水平)方向间距
              runSpacing: 4.0, // 纵轴（垂直）方向间距
              alignment: WrapAlignment.center, //沿主轴方向居中
              children: <Widget>[
                Chip(
                  avatar: CircleAvatar(
                      backgroundColor: Colors.blue, child: Text('A')),
                  label: Text('Hamilton'),
                ),
                Chip(
                  avatar: CircleAvatar(
                      backgroundColor: Colors.blue, child: Text('M')),
                  label: Text('Lafayette'),
                ),
                Chip(
                  avatar: CircleAvatar(
                      backgroundColor: Colors.blue, child: Text('H')),
                  label: Text('Mulligan'),
                ),
                Chip(
                  avatar: CircleAvatar(
                      backgroundColor: Colors.blue, child: Text('J')),
                  label: Text('Laurens'),
                ),
              ],
            ),
            Flow(
              delegate: TestFlowDelegate(margin: const EdgeInsets.all(10.0)),
              children: <Widget>[
                Container(
                  width: 80.0,
                  height: 80.0,
                  color: Colors.red,
                ),
                Container(
                  width: 80.0,
                  height: 80.0,
                  color: Colors.green,
                ),
                Container(
                  width: 80.0,
                  height: 80.0,
                  color: Colors.blue,
                ),
                Container(
                  width: 80.0,
                  height: 80.0,
                  color: Colors.yellow,
                ),
                Container(
                  width: 80.0,
                  height: 80.0,
                  color: Colors.brown,
                ),
                Container(
                  width: 80.0,
                  height: 80.0,
                  color: Colors.purple,
                ),
              ],
            )
          ],
        ));
  }
}

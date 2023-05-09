import 'package:flutter/material.dart';

class ZHFittedBox extends StatefulWidget {
  const ZHFittedBox({Key? key}) : super(key: key);
  @override
  State<StatefulWidget> createState() {
    return ZHFittedBoxState();
  }
}

class ZHFittedBoxState extends State<ZHFittedBox> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('控件适配(Fitted Box)'),
          centerTitle: true,
        ),
        body: ListView(
          shrinkWrap: true,
          padding: const EdgeInsets.all(20.0),
          children: <Widget>[
            Container(
              width: 50,
              height: 50,
              color: Colors.red,
              child: FittedBox(
                fit: BoxFit.none,
                // 子容器超过父容器大小
                child: Container(width: 60, height: 70, color: Colors.blue),
              ),
            ),
            const Text('First'),
            Container(
              width: 50,
              height: 50,
              color: Colors.red,
              child: FittedBox(
                fit: BoxFit.contain,
                // 子容器超过父容器大小
                child: Container(width: 60, height: 70, color: Colors.blue),
              ),
            ),
            const Text('Flutter中国'),
            ClipRect(
              // 将超出子组件布局范围的绘制内容剪裁掉
              child: Container(
                width: 50,
                height: 50,
                color: Colors.red,
                child: FittedBox(
                  fit: BoxFit.cover,
                  child: Container(width: 60, height: 70, color: Colors.blue),
                ),
              ),
            ),
            Text('Flutter zh'),
            Center(
              child: Column(
                children: [
                  wRow(' 90000000000000000 '),
                  FittedBox(child: wRow(' 90000000000000000 ')),
                  wRow(' 800 '),
                  FittedBox(child: wRow(' 800 ')),
                ]
                    .map((e) => Padding(
                          padding: EdgeInsets.symmetric(vertical: 20),
                          child: e,
                        ))
                    .toList(),
              ),
            ),
          ],
        ));
  }

  // 直接使用Row
  Widget wRow(String text) {
    Widget child = Text(text);
    child = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [child, child, child],
    );
    return child;
  }
}

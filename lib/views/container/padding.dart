import 'package:flutter/material.dart';

class ZHPadding extends StatefulWidget {
  const ZHPadding({Key? key}) : super(key: key);
  @override
  State<StatefulWidget> createState() {
    return ZHPaddingState();
  }
}

class ZHPaddingState extends State<ZHPadding> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('填充(Padding)'),
          centerTitle: true,
        ),
        body: ListView(
          shrinkWrap: true,
          padding: const EdgeInsets.all(20.0),
          children: const <Widget>[
            Padding(
              //上下左右各添加16像素补白
              padding: EdgeInsets.all(16),
              child: Column(
                //显式指定对齐方式为左对齐，排除对齐干扰
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Padding(
                    //左边添加8像素补白
                    padding: EdgeInsets.only(left: 8),
                    child: Text("Padding left 8"),
                  ),
                  Padding(
                    //上下各添加8像素补白
                    padding: EdgeInsets.symmetric(vertical: 8),
                    child: Text("padding top 8"),
                  ),
                  Padding(
                    // 分别指定四个方向的补白
                    padding: EdgeInsets.fromLTRB(20, 0, 20, 20),
                    child: Text("padding : 20,0,10,20"),
                  )
                ],
              ),
            )
          ],
        ));
  }
}

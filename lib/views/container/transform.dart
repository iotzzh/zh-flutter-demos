import 'package:flutter/material.dart';
import 'dart:math' as math;

class ZHTransform extends StatefulWidget {
  const ZHTransform({Key? key}) : super(key: key);
  @override
  State<StatefulWidget> createState() {
    return ZHTransformState();
  }
}

class ZHTransformState extends State<ZHTransform> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('页面骨架(Scaffold)'),
          centerTitle: true,
        ),
        body: ListView(
          shrinkWrap: true,
          padding: const EdgeInsets.all(20.0),
          children: <Widget>[
            Container(
              color: Colors.black,
              child: Transform(
                alignment: Alignment.topRight, //相对于坐标系原点的对齐方式
                transform: Matrix4.skewY(0.3), //沿Y轴倾斜0.3弧度
                child: Container(
                  padding: const EdgeInsets.all(8.0),
                  color: Colors.deepOrange,
                  child: const Text('1. container -> transform'),
                ),
              ),
            ),
            Text(''),
            Text(''),
            Text(''),
            Text(''),
            Text(''),
            Text(''),
            DecoratedBox(
              decoration: BoxDecoration(color: Colors.red),
              //默认原点为左上角，左移20像素，向上平移5像素
              child: Transform.translate(
                offset: Offset(-20.0, -5.0),
                child: Text("2. decoratedBox -> boxDecoration -> transform"),
              ),
            ),
            Text(''),
            Text(''),
            Text(''),
            Text(''),
            Text(''),
            Text(''),
            DecoratedBox(
              decoration: BoxDecoration(color: Colors.red),
              child: Transform.rotate(
                //旋转90度
                angle: math.pi / 2,
                child: Text(
                    "3. DecoratedBox -> BoxDecoration -> Transform.rotate"),
              ),
            ),
            Text(''),
            Text(''),
            Text(''),
            Text(''),
            Text(''),
            Text(''),
            DecoratedBox(
                decoration: BoxDecoration(color: Colors.red),
                child: Transform.scale(
                    scale: 1.5, //放大到1.5倍
                    child: Text("4. scale 1.5"))),
            Text(''),
            Text(''),
            Text(''),
            Text(''),
            Text(''),
            Text(''),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                DecoratedBox(
                    decoration: BoxDecoration(color: Colors.red),
                    child: Transform.scale(
                        scale: 1.5, child: Text("4. scale 1.5"))),
                Text(
                  "你好",
                  style: TextStyle(color: Colors.green, fontSize: 18.0),
                )
              ],
            ),
            Text(''),
            Text(''),
            Text(''),
            Text(''),
            Text(''),
            Text(''),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                DecoratedBox(
                  decoration: BoxDecoration(color: Colors.red),
                  //将Transform.rotate换成RotatedBox
                  child: RotatedBox(
                    quarterTurns: 1, //旋转90度(1/4圈)
                    child: Text("5. RotateBox"),
                  ),
                ),
                Text(
                  "你好",
                  style: TextStyle(color: Colors.green, fontSize: 18.0),
                )
              ],
            ),
          ],
        ));
  }
}

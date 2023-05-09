import 'package:flutter/material.dart';

class ZHClip extends StatefulWidget {
  const ZHClip({Key? key}) : super(key: key);
  @override
  State<StatefulWidget> createState() {
    return ZHClipState();
  }
}

class MyClipper extends CustomClipper<Rect> {
  @override
  Rect getClip(Size size) => Rect.fromLTWH(0.0, 0.0, 100.0, 100.0);

  @override
  bool shouldReclip(CustomClipper<Rect> oldClipper) => false;
}

class ZHClipState extends State<ZHClip> {
  @override
  Widget build(BuildContext context) {
    // 头像
    //  const Image(image: AssetImage("assets/images/2.png"), height: 50.0,width: 100.0, fit: BoxFit.fill, ),
    var avatar = Image(image: AssetImage("assets/images/2.png"), height: 50.0);
    return Scaffold(
        appBar: AppBar(
          title: const Text('剪裁(Clip)'),
          centerTitle: true,
        ),
        body: ListView(
          shrinkWrap: true,
          padding: const EdgeInsets.all(20.0),
          children: <Widget>[
            Center(
              child: Column(
                children: <Widget>[
                  avatar, //不剪裁
                  ClipOval(child: avatar), //剪裁为圆形
                  ClipRRect(
                    //剪裁为圆角矩形
                    borderRadius: BorderRadius.circular(5.0),
                    child: avatar,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Align(
                        alignment: Alignment.topLeft,
                        widthFactor: .5, //宽度设为原来宽度一半，另一半会溢出
                        child: avatar,
                      ),
                      Text(
                        "你好世界",
                        style: TextStyle(color: Colors.green),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      ClipRect(
                        //将溢出部分剪裁
                        child: Align(
                          alignment: Alignment.topLeft,
                          widthFactor: .5, //宽度设为原来宽度一半
                          child: avatar,
                        ),
                      ),
                      Text("你好世界", style: TextStyle(color: Colors.green))
                    ],
                  ),
                ],
              ),
            ),
            DecoratedBox(
              decoration: BoxDecoration(color: Colors.red),
              child: ClipRect(
                  clipper: MyClipper(), //使用自定义的clipper
                  child: avatar),
            )
          ],
        ));
  }
}

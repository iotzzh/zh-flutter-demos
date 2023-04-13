import 'package:flutter/material.dart';

class ZHStackPositioned extends StatefulWidget {
  const ZHStackPositioned({Key? key}) : super(key: key);
  @override
  State<StatefulWidget> createState() {
    return ZHStackPositionedState();
  }
}

class ZHStackPositionedState extends State<ZHStackPositioned> {
  void _clickButton() {
    print('click button');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Stack和绝对定位(stack&positioned)'),
          centerTitle: true,
        ),
        body: //通过ConstrainedBox来确保Stack占满屏幕
            ConstrainedBox(
          constraints: BoxConstraints.expand(),
          child: Stack(
            alignment: Alignment.center, //指定未定位或部分定位widget的对齐方式
            children: <Widget>[
              Container(
                child:
                    Text("Hello world", style: TextStyle(color: Colors.white)),
                color: Colors.red,
              ),
              Positioned(
                left: 18.0,
                child: Text("I am Jack"),
              ),
              Positioned(
                top: 18.0,
                child: Text("Your friend"),
              )
            ],
          ),
        ));
  }
}

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
        body: ListView(
          shrinkWrap: true,
          padding: const EdgeInsets.all(20.0),
          children: <Widget>[
            Container(
              child: const Text("Hello world",
                  style: TextStyle(color: Colors.white)),
              color: Colors.red,
            ),
            const Positioned(
              left: 18.0,
              child: Text("I am Jack"),
            ),
            const Positioned(
              top: 18.0,
              child: Text("Your friend"),
            ),
            // Stack(
            //   alignment: Alignment.center,
            //   fit: StackFit.expand, //未定位widget占满Stack整个空间
            //   children: <Widget>[
            //     const Positioned(
            //       left: 18.0,
            //       child: Text("I am Jack"),
            //     ),
            //     Container(
            //       child: const Text("Hello world",
            //           style: TextStyle(color: Colors.white)),
            //       color: Colors.red,
            //     ),
            //     Positioned(
            //       top: 18.0,
            //       child: Text("Your friend"),
            //     )
            //   ],
            // ),
          ],
        ));
  }
}

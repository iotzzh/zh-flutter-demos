import 'package:flutter/material.dart';

class ZHFlex extends StatefulWidget {
  const ZHFlex({Key? key}) : super(key: key);
  @override
  State<StatefulWidget> createState() {
    return ZHFlexState();
  }
}

class ZHFlexState extends State<ZHFlex> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('弹性布局(Flex)'),
          centerTitle: true,
        ),
        body: ListView(
          shrinkWrap: true,
          padding: const EdgeInsets.all(20.0),
          children: <Widget>[
            //Flex的两个子widget按1：2来占据水平空间
            Flex(
              direction: Axis.horizontal,
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: Container(
                    // height: 30.0,
                    color: Colors.red,
                    child:
                        const Text('111111111111111111111111111111111111111'),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Container(
                    // height: 30.0,
                    color: Colors.green,
                    child: const Text(
                        '222222222222222222222222222222222222222222222222222'),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: SizedBox(
                height: 100.0,
                //Flex的三个子widget，在垂直方向按2：1：1来占用100像素的空间
                child: Flex(
                  direction: Axis.vertical,
                  children: <Widget>[
                    Expanded(
                      flex: 2,
                      child: Container(
                        height: 30.0,
                        color: Colors.red,
                      ),
                    ),
                    const Spacer(
                      flex: 1,
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(
                        height: 30.0,
                        color: Colors.green,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ));
  }
}

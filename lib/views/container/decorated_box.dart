import 'package:flutter/material.dart';

class ZHDecoratedBox extends StatefulWidget {
  const ZHDecoratedBox({Key? key}) : super(key: key);
  @override
  State<StatefulWidget> createState() {
    return ZHDecoratedBoxState();
  }
}

class ZHDecoratedBoxState extends State<ZHDecoratedBox> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('装饰器(Decorated Box)'),
          centerTitle: true,
        ),
        body: ListView(
          shrinkWrap: true,
          padding: const EdgeInsets.all(20.0),
          children: <Widget>[],
        ));
  }
}

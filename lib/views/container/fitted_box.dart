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
          children: <Widget>[],
        ));
  }
}

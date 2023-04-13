import 'package:flutter/material.dart';

class ZHClip extends StatefulWidget {
  const ZHClip({Key? key}) : super(key: key);
  @override
  State<StatefulWidget> createState() {
    return ZHClipState();
  }
}

class ZHClipState extends State<ZHClip> {
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
          children: <Widget>[],
        ));
  }
}

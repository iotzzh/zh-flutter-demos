import 'package:flutter/material.dart';

class ZHScaffold extends StatefulWidget {
  const ZHScaffold({Key? key}) : super(key: key);
  @override
  State<StatefulWidget> createState() {
    return ZHScaffoldState();
  }
}

class ZHScaffoldState extends State<ZHScaffold> {
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
          children: <Widget>[],
        ));
  }
}

import 'package:flutter/material.dart';

class ZHContainer extends StatefulWidget {
  const ZHContainer({Key? key}) : super(key: key);
  @override
  State<StatefulWidget> createState() {
    return ZHContainerState();
  }
}

class ZHContainerState extends State<ZHContainer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('容器(Container)'),
          centerTitle: true,
        ),
        body: ListView(
          shrinkWrap: true,
          padding: const EdgeInsets.all(20.0),
          children: <Widget>[],
        ));
  }
}

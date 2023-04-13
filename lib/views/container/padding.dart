import 'package:flutter/material.dart';

class ZHPadding extends StatefulWidget {
  const ZHPadding({Key? key}) : super(key: key);
  @override
  State<StatefulWidget> createState() {
    return ZHPaddingState();
  }
}

class ZHPaddingState extends State<ZHPadding> {
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

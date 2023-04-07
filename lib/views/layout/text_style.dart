import 'package:flutter/material.dart';

class ZHTextStyle extends StatefulWidget {
  const ZHTextStyle({Key? key}) : super(key: key);
  @override
  State<StatefulWidget> createState() {
    return ZHTextStyleState();
  }
}

class ZHTextStyleState extends State<ZHTextStyle> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Text Style'),
        centerTitle: true,
      ),
    );
  }
}

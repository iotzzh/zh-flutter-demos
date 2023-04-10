import 'package:flutter/material.dart';

class ZHButton extends StatefulWidget {
  const ZHButton({Key? key}) : super(key: key);
  @override
  State<StatefulWidget> createState() {
    return ZHButtonState();
  }
}

class ZHButtonState extends State<ZHButton> {
  void _clickButton() {
    print('click button');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('按钮(button)'),
          centerTitle: true,
        ),
        body: ListView(
          shrinkWrap: true,
          padding: const EdgeInsets.all(20.0),
          children: <Widget>[
            ElevatedButton(
              onPressed: _clickButton,
              child: const Text("\"漂浮\"按钮(ElevatedButton)"),
            ),
            TextButton(
              onPressed: _clickButton,
              child:  const Text("文本按钮(TextButton)"),
            ),
            IconButton(
              icon: const Icon(Icons.thumb_up),
              onPressed: _clickButton,
            ),
            ElevatedButton.icon(
              icon: const Icon(Icons.send),
              label: const Text("发送"),
              onPressed: _clickButton,
            ),
            TextButton.icon(
              icon: const Icon(Icons.info),
              label: const Text("详情"),
              onPressed: _clickButton,
            ),
          ],
        ));
  }
}

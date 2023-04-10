import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ZHSwitch extends StatefulWidget {
  const ZHSwitch({Key? key}) : super(key: key);
  @override
  State<StatefulWidget> createState() {
    return ZHSwitchState();
  }
}

class ZHSwitchState extends State<ZHSwitch> {
  bool _switchSelected = true; //维护单选开关状态

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('开关(Switch)'),
          centerTitle: true,
        ),
        body: ListView(
          shrinkWrap: true,
          padding: const EdgeInsets.all(20.0),
          children: <Widget>[
            const Text(
              'Switch',
              style: TextStyle(fontWeight: FontWeight.w900),
            ),
            Switch(
              value: _switchSelected, //当前状态
              onChanged: (value) {
                //重新构建页面
                setState(() {
                  _switchSelected = value;
                });
              },
            ),
            const Text(''),
            const Text(
              'CupertinoSwitch',
              style: TextStyle(fontWeight: FontWeight.w900),
            ),
            CupertinoSwitch(
              // This bool value toggles the switch.
              value: _switchSelected,
              activeColor: CupertinoColors.destructiveRed,
              onChanged: (bool? value) {
                // This is called when the user toggles the switch.
                setState(() {
                  _switchSelected = value ?? false;
                });
              },
            ),
          ],
        ));
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ZHCheckbox extends StatefulWidget {
  const ZHCheckbox({Key? key}) : super(key: key);
  @override
  State<StatefulWidget> createState() {
    return ZHCheckboxState();
  }
}

class ZHCheckboxState extends State<ZHCheckbox> {
  bool? _checkboxSelected = true; //维护复选框状态

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('复选框(checkbox)'),
          centerTitle: true,
        ),
        body: ListView(
          shrinkWrap: true,
          padding: const EdgeInsets.all(20.0),
          children: <Widget>[
            const Text(
              'Checkbox',
              style: TextStyle(fontWeight: FontWeight.w900),
            ),
            Checkbox(
              value: _checkboxSelected,
              activeColor: Colors.red, //选中时的颜色
              
              onChanged: (value) {
                setState(() {
                  _checkboxSelected = value;
                });
              },
            )
          ],
        ));
  }
}

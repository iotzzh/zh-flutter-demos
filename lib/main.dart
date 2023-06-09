import 'package:flutter/material.dart';
import 'package:zh_flutter_demos/views/basic/text_style.dart';
import 'package:zh_flutter_demos/views/basic/button.dart';
import 'package:zh_flutter_demos/views/basic/img_icon.dart';
import 'package:zh_flutter_demos/views/form/form.dart';
import 'package:zh_flutter_demos/views/form/switch.dart';
import 'package:zh_flutter_demos/views/form/checkbox.dart';
import 'package:zh_flutter_demos/views/layout/row_column.dart';
import 'package:zh_flutter_demos/views/layout/flex.dart';
import 'package:zh_flutter_demos/views/layout/wrap_flow.dart';
import 'package:zh_flutter_demos/views/layout/stack_positioned.dart';

import 'package:zh_flutter_demos/views/container/clip.dart';
import 'package:zh_flutter_demos/views/container/container.dart';
import 'package:zh_flutter_demos/views/container/decorated_box.dart';
import 'package:zh_flutter_demos/views/container/fitted_box.dart';
import 'package:zh_flutter_demos/views/container/padding.dart';
import 'package:zh_flutter_demos/views/container/scaffold.dart';
import 'package:zh_flutter_demos/views/container/transform.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static const String _title = 'Flutter 示例集合';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      theme: ThemeData.light(useMaterial3: true),
      home: Scaffold(
        appBar: AppBar(title: const Text(_title), centerTitle: true),
        body: const MyStatefulWidget(),
      ),
      routes: {
        // 基础组件
        'text_style': (context) => const ZHTextStyle(),
        'button': (context) => const ZHButton(),
        'img_icon': (context) => const ZHImgIcon(),
        // 表单组件
        'form': (context) => const ZHForm(),
        'switch': (context) => const ZHSwitch(),
        'checkbox': (context) => const ZHCheckbox(),
        'row_column': (context) => const ZHRowColumn(),
        'flex': (context) => const ZHFlex(),
        'wrap_flow': (context) => const ZHWarpFlow(),
        'stack_positioned': (context) => const ZHStackPositioned(),
        // 容器类组件
        'clip': (context) => const ZHClip(),
        'container': (context) => const ZHContainer(),
        'decorated_box': (context) => const ZHDecoratedBox(),
        'fitted_box': (context) => const ZHFittedBox(),
        'padding': (context) => const ZHPadding(),
        'scaffold': (context) => const ZHScaffold(),
        'transform': (context) => const ZHTransform(),
      },
    );
  }
}

// stores ExpansionPanel state information
class Item {
  Item({
    required this.headerValue,
    required this.buttons,
    this.isExpanded = false,
  });

  String headerValue;
  bool isExpanded;
  List<ItemButton> buttons;
}

class ItemButton {
  ItemButton({
    required this.text,
    required this.routeName,
  });
  String text;
  String routeName;
}

List<Item> generateItems() {
  var items = [
    Item(headerValue: '基础组件', buttons: [
      ItemButton(
        text: '文本',
        routeName: 'text_style',
      ),
      ItemButton(
        text: '按钮',
        routeName: 'button',
      ),
      ItemButton(
        text: 'Img & Button',
        routeName: 'img_icon',
      ),
    ]),
    Item(headerValue: '表单组件', buttons: [
      ItemButton(
        text: '表单(Form)',
        routeName: 'form',
      ),
      ItemButton(
        text: '开关(Switch)',
        routeName: 'switch',
      ),
      ItemButton(
        text: '复选框(checkbox)',
        routeName: 'checkbox',
      )
    ]),
    Item(headerValue: '布局类组件', buttons: [
      ItemButton(
        text: '线性布局(row&column)',
        routeName: 'row_column',
      ),
      ItemButton(
        text: '弹性布局(flex)',
        routeName: 'flex',
      ),
      ItemButton(
        text: '流式布局(wrap&flow)',
        routeName: 'wrap_flow',
      ),
      ItemButton(
        text: '层叠布局(stack&positioned)',
        routeName: 'stack_positioned',
      ),
    ]),
    Item(headerValue: '容器类组件', buttons: [
      ItemButton(
        text: '填充',
        routeName: 'padding',
      ),
      ItemButton(
        text: '容器组件',
        routeName: 'container',
      ),
      ItemButton(
        text: '变换',
        routeName: 'transform',
      ),
      ItemButton(
        text: '装饰容器',
        routeName: 'decorated_box',
      ),
      ItemButton(
        text: '剪裁',
        routeName: 'clip',
      ),
      ItemButton(
        text: '空间适配',
        routeName: 'fitted_box',
      ),
      ItemButton(
        text: '页面骨架',
        routeName: 'scaffold',
      ),
    ]),
    Item(headerValue: '可滚动组件', buttons: [
      ItemButton(
        text: '文本',
        routeName: 'text_style',
      )
    ]),
    Item(headerValue: '功能型组件', buttons: [
      ItemButton(
        text: '文本',
        routeName: 'text_style',
      )
    ]),
    Item(headerValue: '事件处理与通知', buttons: [
      ItemButton(
        text: '文本',
        routeName: 'text_style',
      )
    ]),
    Item(headerValue: '动画', buttons: [
      ItemButton(
        text: '文本',
        routeName: 'text_style',
      )
    ]),
    Item(headerValue: '自定义组件', buttons: [
      ItemButton(
        text: '文本',
        routeName: 'text_style',
      )
    ]),
    Item(headerValue: '文件操作', buttons: [
      ItemButton(
        text: '文本',
        routeName: 'text_style',
      )
    ]),
    Item(headerValue: '网络请求', buttons: [
      ItemButton(
        text: '文本',
        routeName: 'text_style',
      )
    ]),
    Item(headerValue: 'flutter扩展', buttons: [
      ItemButton(
        text: '文本',
        routeName: 'text_style',
      )
    ]),
    Item(headerValue: '国际化', buttons: [
      ItemButton(
        text: '文本',
        routeName: 'text_style',
      )
    ]),
    Item(headerValue: '其他', buttons: [
      ItemButton(
        text: '文本',
        routeName: 'text_style',
      )
    ]),
  ];

  return List<Item>.generate(items.length, (int index) {
    return Item(
      headerValue: items[index].headerValue,
      isExpanded: index == 3,
      buttons: items[index].buttons,
    );
  });
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({super.key});

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  final List<Item> _data = generateItems();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: _buildPanel(),
      ),
    );
  }

  Widget _buildPanel() {
    return ExpansionPanelList(
      expansionCallback: (int index, bool isExpanded) {
        setState(() {
          _data[index].isExpanded = !isExpanded;
        });
      },
      children: _data.map<ExpansionPanel>((Item item) {
        return ExpansionPanel(
          headerBuilder: (BuildContext context, bool isExpanded) {
            return ListTile(
              title: Text(item.headerValue),
            );
          },
          body: Wrap(
            direction: Axis.horizontal,
            textDirection: TextDirection.ltr,
            children: item.buttons.map<Widget>((ItemButton button) {
              return TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, button.routeName);
                  },
                  child: Text(
                    style: const TextStyle(color: Colors.purple, fontSize: 18),
                    button.text,
                    textAlign: TextAlign.center,
                  ));
            }).toList(),
          ),
          isExpanded: item.isExpanded,
        );
      }).toList(),
    );
  }
}

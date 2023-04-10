import 'package:flutter/material.dart';
import 'package:zh_flutter_demos/views/basic/text_style.dart';
import 'package:zh_flutter_demos/views/basic/button.dart';
import 'package:zh_flutter_demos/views/basic/img_icon.dart';

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
        'text_style': (context) => const ZHTextStyle(),
        'button': (context) => const ZHButton(),
        'img_icon': (context) => const ZHImgIcon(),
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
      )
    ]),
    Item(headerValue: '布局类组件', buttons: [
      ItemButton(
        text: '文本',
        routeName: 'text_style',
      )
    ]),
    Item(headerValue: '容器类组件', buttons: [
      ItemButton(
        text: '文本',
        routeName: 'text_style',
      )
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
      isExpanded: index == 0,
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
          body: Flex(
            direction: Axis.horizontal,
            children: item.buttons.map<Widget>((ItemButton button) {
              return TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, button.routeName);
                  },
                  child: Text(
                    style: const TextStyle(color: Colors.cyan),
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

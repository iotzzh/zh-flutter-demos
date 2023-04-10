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
          title: const Text('文字样式(Text&Style)'),
          centerTitle: true,
        ),
        body: ListView(
          shrinkWrap: true,
          padding: const EdgeInsets.all(20.0),
          children: <Widget>[
            const Text(
              '普通文本',
              style: TextStyle(fontWeight: FontWeight.w900),
            ),
            const Text('Hello World'),
            Text(
              "Hello world! * 4, oneline;" * 4,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
            const Text(
              "Hello world Scale",
              textScaleFactor: 1.5,
              textAlign: TextAlign.right,
            ),
            const Text(''),
            // 带样式的文本
            const Text(
              '文本设置样式（TextStyle）',
              style: TextStyle(fontWeight: FontWeight.w900),
            ),

            Text(
              "Hello world",
              style: TextStyle(
                  color: Colors.blue,
                  fontSize: 18.0,
                  height: 1.2,
                  fontFamily: "Courier",
                  background: Paint()..color = Colors.yellow,
                  decoration: TextDecoration.underline,
                  decorationStyle: TextDecorationStyle.dashed),
            ),
            const Text(''),
            // Textspan
            const Text(
              '行内插入特别值（TextSpan）',
              style: TextStyle(fontWeight: FontWeight.w900),
            ),
            const Text.rich(TextSpan(children: [
              TextSpan(text: "我的网站: "),
              TextSpan(
                text: "https://www.iotzzh.com",
                style: TextStyle(color: Colors.blue),
              ),
            ])),

            // 默认样式
            const Text(''),
            // Textspan
            const Text(
              '默认样式（DefaultTextStyle）',
              style: TextStyle(fontWeight: FontWeight.w900),
            ),
            const DefaultTextStyle(
              //1.设置文本默认样式
              style: TextStyle(
                color: Colors.red,
                fontSize: 20.0,
              ),
              textAlign: TextAlign.start,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text("hello world"),
                  Text("I am Tim"),
                  Text(
                    "I am Tim",
                    style: TextStyle(
                        inherit: false, //2.不继承默认样式
                        color: Colors.grey),
                  ),
                ],
              ),
            ),

            // 字体
            const Text(''),
             const Text(
              '设置字体（font family）',
              style: TextStyle(fontWeight: FontWeight.w900),
            ),

            // const Text('', style: TextStyle(fontFamily: 'DS'))
            const Text.rich(TextSpan(children: [
              TextSpan(text: "第一步 下载字体到项目中"),
              TextSpan(
                text: "https://fonts.google.com/ \n",
                style: TextStyle(color: Colors.blue,fontFamily: 'DS'),
              ),
              TextSpan(text: "第二步 修改pubspec.yaml \n", style: TextStyle(fontFamily: 'DS')),
              TextSpan(text: "第三步 使用", style: TextStyle(fontFamily: 'DS')),
            ])),
          
          
          ],
        ));
  }
}

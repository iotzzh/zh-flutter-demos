import 'package:flutter/material.dart';

class ZHImgIcon extends StatefulWidget {
  const ZHImgIcon({Key? key}) : super(key: key);
  @override
  State<StatefulWidget> createState() {
    return ZHImgIconState();
  }
}

class ZHImgIconState extends State<ZHImgIcon> {
  @override
  Widget build(BuildContext context) {
    String icons = "";
// accessible: 0xe03e
    icons += "\uE03e";
// error:  0xe237
    icons += " \uE237";
// fingerprint: 0xe287
    icons += " \uE287";
var img=AssetImage("assets/images/2.png");
    return Scaffold(
        appBar: AppBar(
          title: const Text('图片Icon(IMG&ICON)'),
          centerTitle: true,
        ),
        body: ListView(
          shrinkWrap: true,
          padding: const EdgeInsets.all(20.0),
          children: <Widget>[
            const Image(image: AssetImage("assets/images/2.png"), width: 100.0),
            Image.asset("assets/images/2.png", width: 30.0,),
            // const Image(
            //   image: NetworkImage(
            //       "https://avatars2.githubusercontent.com/u/20411648?s=460&v=4"),
            //   width: 100.0,
            // ),
            Text(
              icons,
              style: const TextStyle(
                fontFamily: "MaterialIcons",
                fontSize: 24.0,
                color: Colors.green,
              ),
            ),
            const Image(image: AssetImage("assets/images/2.png"), height: 50.0,width: 100.0, fit: BoxFit.fill, ),
            const Image(image: AssetImage("assets/images/2.png"), height: 50.0,width: 100.0, fit: BoxFit.contain, ),
            const Image(image: AssetImage("assets/images/2.png"), height: 50.0,width: 100.0, fit: BoxFit.cover, ),
            const Image(image: AssetImage("assets/images/2.png"), height: 50.0,width: 100.0, fit: BoxFit.fitWidth, ),
            const Image(image: AssetImage("assets/images/2.png"), height: 50.0,width: 100.0, fit: BoxFit.fitHeight, ),
            const Image(image: AssetImage("assets/images/2.png"), height: 50.0,width: 100.0, fit: BoxFit.scaleDown, ),
          ],
        ));
  }
}

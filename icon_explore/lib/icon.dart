import 'package:flutter/material.dart';

class IconTest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String icon_string = "";
    icon_string += "\uE914";
    icon_string += " \uE000";
    icon_string += " \uE90D";

    return Container(
      padding: EdgeInsets.fromLTRB(0, 40, 0, 0),
      color: Colors.white,
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Text(
                icon_string,
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.blue,
                  fontFamily: "MaterialIcons",
                ),
              ),
              Icon(
                Icons.accessible,
                color: Colors.green,
              ),
              Icon(
                Icons.error,
                color: Colors.green,
              ),
              Icon(
                Icons.fingerprint,
                color: Colors.green,
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Icon(
                Icons.favorite,
                color: Colors.pink,
                size: 24,
                semanticLabel: 'modes',
              ),
              Icon(
                Icons.audiotrack,
                color: Colors.green,
                size: 24,
              ),
              Icon(
                Icons.beach_access,
                color: Colors.blue,
                size: 36.0,
              ),
            ],
            mainAxisAlignment: MainAxisAlignment.spaceAround,
          ),
          Icon(
            Icons.usb,
            size: 300,
            color: Colors.yellow,
            textDirection: TextDirection.rtl,
            semanticLabel: "语义标签", // 设置用来渲染图标的文本方向
          )
        ],
      ),
    );
  }
}

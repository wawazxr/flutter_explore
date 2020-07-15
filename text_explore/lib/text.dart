import 'dart:ui';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class ExploreText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Theme(
        data: Theme.of(context).copyWith(
            textTheme: TextTheme(
          bodyText2: TextStyle(
            color: Colors.red,
          ),
        )),
        child: FloatingActionButton(
          onPressed: null,
          child: Icon(Icons.add),
        ));

    return Scaffold(
      appBar: AppBar(
        title: Text('Text explore'),
        backgroundColor: Colors.red,
      ),
      body: Center(
          child: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text("Hello world! I'm Jack.\n"),
            Text(
              "Hello world! I'm Jack." * 4,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
            Text(
              "Hello world! I'm Jack." * 3,
              textScaleFactor: 1.5,
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'HelloWorld',
              style: TextStyle(
                  color: Colors.blue,
                  fontWeight: FontWeight.w500, // 设置粗体
                  fontStyle: FontStyle.italic, // 设置斜体
                  fontSize: 36.0,
                  // height: 2,
                  fontFamily: "Courier",
                  background: Paint()..color = Colors.yellow, // 语法？
                  decoration: TextDecoration.underline,
                  decorationStyle: TextDecorationStyle.solid),
            ),
            Text.rich(TextSpan(
              children: [
                TextSpan(
                    text: "Home:",
                    style: TextStyle(
                      color: Colors.red,
                    )),
                TextSpan(
                    recognizer: TapGestureRecognizer()..onTap = () {},
                    text: "https://www.baidu.com",
                    style: TextStyle(color: Colors.blue)),
              ],
            )),
            DefaultTextStyle(
              style: TextStyle(
                fontSize: 20,
                color: Colors.red,
              ),
              child: Column(
                children: <Widget>[
                  Text('hello world'),
                  Text('my name x r'),
                  Text(
                    "go go go", // 如果不重写，会继承上面的 默认样式
                    style: TextStyle(
                      inherit: false,
                      color: Colors.grey,
                      fontSize: 30.0,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 50,
              width: 150,
              color: Colors.blue.withOpacity(0.4),
              alignment: Alignment.center,
              child: Text(
                '学习Flutter 中 Text 控件的使用',
                textAlign: TextAlign.center,
                softWrap: true,
              ),
            ),
          ],
        ),
      )),
    );
  }
}

/*
overflow: 

clip：直接裁剪
fade：越来越透明
ellipsis: 省略号结尾
visible: 依然显示，此时将会溢出父组件 

*/

import 'package:flutter/material.dart';

class LayoutRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Row Layout'),
      ),
      body: Container(
        height: 70,
        color: Color(0x4484FFFF),
        child: Row(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(
                left: 25,
              ),
              child: Icon(
                Icons.add,
                size: 30,
                color: Colors.pink,
              ),
            ),
            SizedBox(
              //  使用sizeBox 插入10像素
              width: 10,
            ),
            Expanded(
              child: Text(
                '附近',
                style: TextStyle(fontSize: 18),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(right: 25),
              child: Icon(
                Icons.keyboard_arrow_right,
                color: Colors.black38,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

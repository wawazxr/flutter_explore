import 'package:flutter/material.dart';

class LayoutListView extends StatelessWidget {
  final data = <Color>[
    Colors.purple[50],
    Colors.purple[100],
    Colors.purple[200],
    Colors.purple[300],
    Colors.purple[400],
    Colors.purple[500],
    Colors.purple[600],
    Colors.purple[700],
    Colors.purple[800],
    Colors.purple[900],
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('List view'),
        ),
        body: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(16),
              height: 150,
              color: Colors.orange.withAlpha(100),
              child: ListView(
                scrollDirection: Axis.vertical,
                reverse: false,
                shrinkWrap: false,
                padding: EdgeInsets.symmetric(horizontal: 0),
                children: data
                    .map((color) => Container(
                          alignment: Alignment.center,
                          width: 100,
                          height: 50,
                          color: color,
                          child: Text(
                            colorString(color),
                            style: TextStyle(
                              color: Colors.white,
                              shadows: [
                                Shadow(
                                  color: Colors.black,
                                  offset: Offset(.5, .5),
                                  blurRadius: 2,
                                )
                              ],
                            ),
                          ),
                        ))
                    .toList(),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 150,
              color: Colors.lightBlue,
              child: ListView.builder(
                itemCount: data.length,
                itemBuilder: (context, index) {
                  // return Text(colorString(data[index]));
                  return _buildItem(data[index]);
                },
              ),
            ),
            Container(
              color: Colors.black,
              padding: EdgeInsets.all(10),
              height: 150,
              alignment: Alignment.center,
              child: ListView.separated(
                  itemBuilder: (context, index) {
                    return _buildItem(data[index]);
                  },
                  separatorBuilder: (context, index) {
                    return Divider(
                      height: 1,
                      color: Colors.white,
                      thickness: 1,
                    );
                  },
                  itemCount: data.length),
            )
          ],
        ));
  }

  Widget _buildItem(Color color) {
    return Container(
      alignment: Alignment.center,
      width: 100,
      height: 50,
      color: color,
      child: Text(
        colorString(color),
        style: TextStyle(color: Colors.white, shadows: [
          Shadow(color: Colors.black, offset: Offset(.5, .5), blurRadius: 2)
        ]),
      ),
    );
  }

  String colorString(Color color) {
    print('${color.toString()}'); // 使用${},可以打印属性
    return "#${color.value.toRadixString(16).padLeft(8, '0').toUpperCase()}";
  }
}

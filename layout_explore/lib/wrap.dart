import 'package:flutter/material.dart';

class DirectionWrap extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Warp'),
        backgroundColor: Colors.red,
      ),
      body: Wrap(
        children: Axis.values
            .map((mode) => Column(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.all(5),
                      width: 160,
                      height: 100,
                      color: Colors.grey.withAlpha(33),
                      child: _buildItem(mode),
                    ),
                    Text(mode.toString().split('.')[1]),
                  ],
                ))
            .toList(),
      ),
    );
  }

  // _buildItem(model) => Wrap();
  Widget _buildItem(var mode) {
    return Wrap(
      direction: mode,
      runSpacing: 10,
      spacing: 10,
      children: <Widget>[
        yellowBox,
        redBox,
        greenBox,
        blackBox,
        purpleBox,
        orangeBox,
        cyanBox,
      ],
    );
  }

  final Widget yellowBox = Container(
    color: Colors.yellow,
    height: 30,
    width: 50,
  );

  final redBox = Container(
    color: Colors.red,
    height: 40,
    width: 40,
  );

  final Widget greenBox = Container(
    color: Colors.green,
    width: 40,
    height: 20,
  );
  final Widget blackBox = Container(
    color: Colors.black,
    width: 10,
    height: 10,
  );
  final Widget purpleBox = Container(
    color: Colors.purple,
    width: 20,
    height: 20,
  );
  final Widget orangeBox = Container(
    color: Colors.orange,
    width: 80,
    height: 20,
  );
  final Widget cyanBox = Container(
    color: Colors.cyan,
    height: 10,
    width: 20,
  );
}

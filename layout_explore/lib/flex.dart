import 'package:flutter/material.dart';

class FlexLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Flex'),
        ),
        body: Wrap(
          children: <Widget>[
            Wrap(
              children: Axis.values
                  .map((e) => Column(
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.all(5),
                            width: 160,
                            height: 100,
                            color: Colors.grey.withAlpha(33),
                            child: _item(e),
                          ),
                          Text(e.toString().split('.')[1]),
                        ],
                      ))
                  .toList(),
            ),
            Wrap(
              children: MainAxisAlignment.values
                  .map((e) => Column(
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.all(5),
                            width: 160,
                            height: 100,
                            color: Colors.grey.withAlpha(33),
                            child: Flex(
                              direction: Axis.horizontal,
                              mainAxisAlignment: e,
                              children: <Widget>[blueBox, redBox, greenBox],
                            ),
                          ),
                          Text(e.toString().split('.')[1]),
                        ],
                      ))
                  .toList(),
            ),
          ],
        ));
  }

  final redBox = Container(
    color: Colors.red,
    height: 30,
    width: 40,
  );

  final blueBox = Container(
    color: Colors.blue,
    height: 20,
    width: 30,
  );

  final greenBox = Container(
    color: Colors.green,
    height: 20,
    width: 30,
  );

  Widget _item(mode) => Flex(
        direction: mode,
        children: <Widget>[redBox, greenBox, blueBox],
      );
}

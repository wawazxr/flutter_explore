import 'package:flutter/material.dart';

class ListTitleWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List Title Widget'),
      ),
      body: Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.all(10),
            color: Colors.grey.withAlpha(22),
            child: ListTile(
              leading: Icon(Icons.android),
              title: Text('创造梦想'),
              subtitle: Text('car dream'),
              contentPadding: EdgeInsets.all(5),
              trailing: Icon(Icons.more_vert),
              onLongPress: () {},
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('this is second screen'),
      ),
      body: Center(
        child: FlatButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text('Go Back')),
      ),
    );
  }
}

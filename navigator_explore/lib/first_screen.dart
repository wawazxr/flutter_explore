import 'package:flutter/material.dart';
import 'package:navigator_explore/second_screen.dart';

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('This is first screen'),
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () {
            // nav to second screen, when tapped.
            // Navigator.push(
            //   context,
            //   MaterialPageRoute(
            //     builder: (context) {
            //       return SecondScreen();
            //     },
            //   ),
            // );

            // Navigator.of(context).push(MaterialPageRoute(
            //   builder: (context) {
            //     return SecondScreen();
            //   },
            // ));

            Navigator.of(context)
              ..push(MaterialPageRoute(
                builder: (context) {
                  return SecondScreen();
                },
              ));
          },
          child: Text('Launch new screen'),
        ),
      ),
    );
  }
}

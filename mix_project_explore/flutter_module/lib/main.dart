import 'package:flutter/material.dart';
import 'dart:ui';
import 'dart:convert';
import 'package:flutter/services.dart';
import 'home.dart';

void main() => runApp(_widgetForRoute(window.defaultRouteName));
Widget _widgetForRoute(String url) {
  // route名称
  String route =
      url.indexOf('?') == -1 ? url : url.substring(0, url.indexOf('?'));
// 参数Json字符串
  String paramsJson =
      url.indexOf('?') == -1 ? '{}' : url.substring(url.indexOf('?') + 1);
  Map<String, dynamic> mapJson = json.decode(paramsJson);
  String message = mapJson["message"];
// 解析参数
  switch (route) {
    case 'route1':
      return MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: Text('Flutter页面'),
          ),
          body: ContentWidget(
            route: route,
            message: message,
          ),
        ),
      );
    default:
      return Center(
        child: Text('Unknown route: $route',
            style: TextStyle(color: Colors.red),
            textDirection: TextDirection.ltr),
      );
  }
}

class ContentWidget extends StatefulWidget {
  ContentWidget({Key key, this.route, this.message}) : super(key: key);
  final String route;
  var message;
  _ContentWidgetState createState() => new _ContentWidgetState();
}

class _ContentWidgetState extends State<ContentWidget> {
  static const nativeChannel =
      const MethodChannel('com.example.flutter/native');
  static const flutterChannel =
      const MethodChannel('com.example.flutter/flutter');
  void onDataChange(val) {
    setState(() {
      widget.message = val;
    });
  }

  @override
  void initState() {
    super.initState();
    Future<dynamic> handler(MethodCall call) async {
      switch (call.method) {
        case 'onActivityResult':
          onDataChange(call.arguments['message']);
          print('1234' + call.arguments['message']);
          break;
        case 'backAction':
          if (Navigator.canPop(context)) {
            Navigator.of(context).pop();
          } else {
            nativeChannel.invokeMethod('backAction');
          }
          break;
      }
    }

    flutterChannel.setMethodCallHandler(handler);
  }

  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        children: <Widget>[
          Positioned(
            top: 100,
            left: 0,
            right: 0,
            height: 100,
            child: Text(
              widget.message,
              textAlign: TextAlign.center,
            ),
          ),
          Positioned(
            top: 200,
            left: 100,
            right: 100,
            height: 100,
            child: RaisedButton(
                child: Text('打开上一个原生页面'),
                onPressed: () {
                  returnLastNativePage(nativeChannel);
                }),
          ),
          Positioned(
            top: 330,
            left: 100,
            right: 100,
            height: 100,
            child: RaisedButton(
                child: Text('打开下一个原生页面'),
                onPressed: () {
                  openNextNativePage(nativeChannel);
                }),
          ),
          Positioned(
            top: 460,
            left: 100,
            right: 100,
            height: 100,
            child: RaisedButton(
                child: Text('打开下一个Flutter页面'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SecondFlutterWidget(),
                    ),
                  );
                }),
          )
        ],
      ),
    );
  }
}

void returnLastNativePage(MethodChannel channel) async {
  //参数
//  const channel = const MethodChannel('com.example.flutter/native');
//  static const flutterChannel = const MethodChannel('com.example.flutter/flutter');
  Map<String, dynamic> para = {'message': '嗨，本文案来自Flutter页面，回到第一个原生页面将看到我'};
  final String result = await channel.invokeMethod('backFirstNative', para);
  print('这是在flutter中打印的' + result);
}

void openNextNativePage(MethodChannel channel) async {
  //参数
//  const channel = const MethodChannel('com.example.flutter/native');
  Map<String, dynamic> para = {'message': '嗨，本文案来自Flutter页面，打开第二个原生页面将看到我'};
  final String result = await channel.invokeMethod('openSecondNative', para);
  print('这是在flutter中打印的' + result);
}

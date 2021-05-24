// 1) Create a new Flutter App (in this project) and output an AppBar and some text
// below it
// 2) Add a button which changes the text (to any other text of your choice)
// 3) Split the app into three widgets: App, TextControl & Text

import 'package:flutter/material.dart';
import './textNewWidget.dart';
import './textControl.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    //throw UnimplementedError();
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  String _originalText = 'Some text below AppBar';
  String _tempText = 'Changed Text after click';
  String _temp1 = '';

  void _changeText() {
    setState(() {
      _temp1 = _originalText;
      _originalText = _tempText;
      _tempText = _temp1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter Assignment'),
        ),
        body: Column(
          children: <Widget>[
           TextNewWidget(_originalText),
           TextControl(_changeText),
          ],
        ),
      ),
    );
  }
}

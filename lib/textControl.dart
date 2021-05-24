import 'package:flutter/material.dart';
class TextControl extends StatelessWidget {
  final Function controlText;
  TextControl(this.controlText);
  @override
  Widget build(BuildContext context) {
    
    return  RaisedButton(
              onPressed: controlText,
              child: Text('Change Text'),
            );
  }
}
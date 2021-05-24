import 'package:flutter/material.dart';
class TextNewWidget extends StatelessWidget {
  final String _textNeeded;
  TextNewWidget(this._textNeeded);

  @override
  Widget build(BuildContext context) {
    return Text(
              _textNeeded,
              textAlign: TextAlign.center,
            );
  }
}
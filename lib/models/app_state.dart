import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppState extends ChangeNotifier {
  String _text = 'world';

  String get text => _text;

  void setText(final String text) {
    this._text = text;
    notifyListeners();
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  final double height;
  final double minWidth;
  final String text;
  final Function onPressed;

  RoundedButton(
      {this.text, this.height = 48.0, this.minWidth = 200.0, this.onPressed});

  @override
  Widget build(BuildContext context) {
    final contextTheme = Theme.of(context);
    return ButtonTheme(
      height: this.height > 0 ? this.height : contextTheme.buttonTheme.height,
      minWidth:
          this.minWidth > 0 ? this.minWidth : contextTheme.buttonTheme.minWidth,
      textTheme: ButtonTextTheme.accent,
      buttonColor: contextTheme.primaryColor,
      colorScheme: contextTheme.colorScheme.copyWith(secondary: Colors.white),
      child: RaisedButton(
        child: Text(
          this.text,
          style: TextStyle(fontSize: 16.0),
        ),
        onPressed: this.onPressed,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(24.0)),
      ),
    );
  }
}

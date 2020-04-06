import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hello/screens/next_screen.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Welcome'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 10.0),
          child: Column(
            children: <Widget>[
              Text('Hello, world.'),
              RaisedButton(
                child: Text('Next'),
                onPressed: () => Navigator.push(context,
                    CupertinoPageRoute(builder: (_context) => NextScreen())),
              )
            ],
          ),
        ),
      ),
    );
  }
}

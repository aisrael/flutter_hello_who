import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hello/components/rounded_button.dart';
import 'package:hello/models/app_state.dart';
import 'package:hello/screens/who_to_greet_screen.dart';
import 'package:provider/provider.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final contextTheme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Welcome'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 10.0),
          child: Column(
            children: <Widget>[
              Consumer<AppState>(builder: (context, appState, child) {
                return Text(
                  'Hello, ${appState.text}.',
                  style: TextStyle(fontSize: 18.0),
                );
              }),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 20.0),
                child: RoundedButton(
                  text: 'Next',
                  onPressed: () => Navigator.push(
                      context,
                      CupertinoPageRoute(
                          builder: (_context) => WhoToGreetScreen())),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

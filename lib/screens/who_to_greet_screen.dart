import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hello/models/app_state.dart';
import 'package:provider/provider.dart';

class WhoToGreetScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return WhoToGreetScreenState();
  }
}

class WhoToGreetScreenState extends State<WhoToGreetScreen> {
  TextEditingController _textEditingController;

  @override
  void initState() {
    super.initState();
    _textEditingController = TextEditingController();
  }

  @override
  void dispose() {
    super.dispose();
    _textEditingController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Hello Who?'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 10.0),
          child: Column(
            children: <Widget>[
              TextField(
                controller: _textEditingController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Enter who to greet here',
                ),
                onChanged: (_value) => setState(() {}),
                onSubmitted: (value) => _setText(context, value),
              ),
              InkWell(
                onTap: () => _setButtonPressed(context),
                child: RaisedButton(
                  child: Text('Set'),
                  color: Theme.of(context).primaryColor,
                  disabledColor: Theme.of(context).disabledColor,
                  onPressed: _textEditingController.text.isEmpty
                      ? null
                      : () => _setButtonPressed(context),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  _setButtonPressed(final BuildContext context) {
    debugPrint("'Set' button pressed");
    _setText(context, _textEditingController.text);
  }

  _setText(final BuildContext context, final String value) {
    debugPrint("_setText('$value')");
    Provider.of<AppState>(context, listen: false).setText(value);
    Navigator.pop(context);
  }
}

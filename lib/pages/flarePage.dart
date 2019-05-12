import 'package:flutter/material.dart';
import 'package:flarecode/flare_actor.dart';

void main() => runApp(
  MaterialApp(
    home: Scaffold(
      body: SafeArea(child: Demo()),
    ),
  ),
);

class Demo extends StatefulWidget {
  @override
  _DemoState createState() => _DemoState();
}

class _DemoState extends State<Demo> {
  String _animation = "Build";

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Expanded(
          child: FlareActor(
            "images/flareDemo.flr",
            animation: _animation,
          ),
        ),
        RaisedButton(
          child: Text("Build"),
          onPressed: () {
            setState(() {
              _animation = "Build";
            });
          },
        ),
        RaisedButton(
          child: Text("Build and Fade Out"),
          onPressed: () {
            setState(() {
              _animation = "Build and Fade Out";
            });
          },
        ),
      ],
    );
  }
}
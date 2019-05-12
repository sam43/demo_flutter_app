import 'package:demo_flutter_app/pages/secondPage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'flarePage.dart';

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First Screen'),
      ),
      body: Center(
        child: RaisedButton(
          color: Colors.red,
          child: Text('Go to Second Screen'),
          onPressed: () {
            //Use`Navigator` widget to push the second screen to out stack of screens
            Navigator.of(context)
                .push(MaterialPageRoute<Null>(builder: (BuildContext context) {
              return Demo();
            }));
          },
        ),
      ),
    );
  }
}
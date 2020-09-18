import 'package:flutter/material.dart';
import 'page.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: new PreferredSize(
        child: new Container(
          padding: new EdgeInsets.only(top: 23.0),
          child: Center(
            child: new Text(
              'Nostradamus',
              style: new TextStyle(
                  fontSize: 20.0,
                  letterSpacing: 2.5,
                  fontWeight: FontWeight.w900,
                  color: Colors.white),
            ),
          ),
          decoration: new BoxDecoration(
              gradient:
                  new LinearGradient(colors: [Colors.white60, Colors.black]),
              boxShadow: [
                new BoxShadow(
                  color: Colors.grey[500],
                  blurRadius: 20.0,
                  spreadRadius: 1.0,
                )
              ]),
        ),
        preferredSize: new Size(5, 45),
      ),
      body: SafeArea(
        child: logic(),
      ),
    );
  }
}

void main() => runApp(
      MaterialApp(
        home: MyApp(),
      ),
    );

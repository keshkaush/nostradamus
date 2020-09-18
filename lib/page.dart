import 'dart:math';
import 'package:flutter/material.dart';

class logic extends StatefulWidget {
  @override
  _logicState createState() => _logicState();
}

class _logicState extends State<logic> {
  var leftvalue = 1;
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
        decoration: new BoxDecoration(
            gradient: new LinearGradient(
                colors: [Colors.white10, Colors.deepPurple[100]]),
            boxShadow: [
              new BoxShadow(
                color: Colors.grey[500],
                blurRadius: 20.0,
                spreadRadius: 1.0,
              )
            ]),
        padding: EdgeInsets.all(20.0),
        child: Center(
          child: Text(
            'Having Doubts, Let your Destiny Decide ...!!!',
            style: TextStyle(
              fontSize: 18.0,
              letterSpacing: 1.5,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
        ),
      ),
      AnimatedContainer(
        duration: Duration(milliseconds: 50),
        width: 280,
        height: 280,
        curve: Curves.easeInOutSine,
        child: Image.asset('images/down.png'),
      ),
      AnimatedContainer(
        duration: Duration(milliseconds: 200),
        width: 360,
        height: 400,
        curve: Curves.easeInOutBack,
        child: FlatButton(
          padding: EdgeInsets.all(4),
          onPressed: () {
            setState(() {
              leftvalue = Random().nextInt(3) + 1;
            });
          },
          child: Image.asset('images/Ball$leftvalue.png'),
        ),
      ),
    ]);
  }
}

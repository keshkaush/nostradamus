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
          child: Card(
            child: ListTile(
              title: Text(
                'Having Doubts, Why not Make It Easy ?      Ask Me Anything',
                style: TextStyle(
                  letterSpacing: 2,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
      ),
      SizedBox(
        height: 140,
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

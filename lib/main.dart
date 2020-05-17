import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: Ball(),
      ),
    );
class Ball extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green.shade300,
      appBar: AppBar(
        backgroundColor: Colors.green.shade900,
        title: Text('Ask Me Anything'),
        centerTitle: true,
      ),
      body: BallBody(),
    );
  }
}

class BallBody extends StatefulWidget {
  @override
  _BallBodyState createState() => _BallBodyState();
}

class _BallBodyState extends State<BallBody> {
  int ballNumber=1;
  @override
  Widget build(BuildContext context) {
    return Center (
    child: FlatButton(
      onPressed: () {
        setState(() {
          ballNumber = Random().nextInt(5) +1 ;
        });
      },
      child: Image.asset('images/ball$ballNumber.png'),
    ),
    );
  }
}


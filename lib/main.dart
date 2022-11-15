import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          title: Text('Magic Ball'),
          backgroundColor: Colors.lightBlue,
        ),
        body: BallPage(),
      ),
    ),
  );


class BallPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BallPageStateFul();
  }
}

class BallPageStateFul extends StatefulWidget {
  @override
  State<BallPageStateFul> createState() => _BallPageStateFul();
}

class _BallPageStateFul extends State<BallPageStateFul> {

  Random random = new Random();

  int ball = 1;

  void BallRandom() {
    setState(() {
      ball = random.nextInt(5)+1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
      Expanded(
      child: TextButton(
      onPressed: () {
        BallRandom();
      },
      child: Image.asset('images/ball$ball.png')
    )
      )
      ],
      )
    );
  }
}


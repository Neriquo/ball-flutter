import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        home: ballAppTop(),
      ),
    );

class ballAppTop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ball app',
      home: Scaffold(
        backgroundColor: Colors.blue,
        body: Container(
          child: Ball(),
        ),
        appBar: AppBar(
          title: Text('Ask Me Anything '),
          backgroundColor: Colors.indigo.shade900,
        ),
      ),
    );
  }
}

class Ball extends StatefulWidget {
  @override
  State<Ball> createState() => _BallState();
}

class _BallState extends State<Ball> {
  int ballNumber = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: TextButton(
          onPressed: () {
            setState(() {
              print('i got click');
              ballNumber = Random().nextInt(5) + 1;
            });
          },
          child: Image.asset('images/ball$ballNumber.png'),
        ),
      ),
    );
  }
}

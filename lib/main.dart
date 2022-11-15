import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.blue,
          appBar: AppBar(
            title: Text('Ask Me Anything'),
            backgroundColor: Colors.blue.shade900,
          ),
          body: ballMagic(),
        ),
      ),
    );

class ballMagic extends StatefulWidget {
  @override
  State<ballMagic> createState() => _ballMagicState();
}

class _ballMagicState extends State<ballMagic> {
  int BallNumber = 1;
  void changeBall() {
    setState(() {
      //rightDiceNumber = 6;
      BallNumber = Random().nextInt(5) + 1;
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
                  changeBall();
                },
                child: Image.asset('images/ball$BallNumber.png')),
          ),
        ],
      ),
    );
  }
}

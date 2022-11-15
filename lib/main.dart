import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.blue,
          appBar: AppBar(
            title: Text('Ask Me Anything'),
            backgroundColor: Colors.cyan,
          ),
          body: BallPage(),
        ),
      ),
    );

class BallPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BalleStateful();
  }
}

class BalleStateful extends StatefulWidget {
  @override
  State<BalleStateful> createState() => _BalleStatefulState();
}

class _BalleStatefulState extends State<BalleStateful> {
  int image = 1;

  void randomInt() {
    setState(() {
      this.image = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
              child: TextButton(
            child: Image.asset('images/ball$image.png'),
            onPressed: () {
              randomInt();
            },
          ))
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(BallPage());

class BallPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          backgroundColor: Colors.blue,
          appBar: AppBar(
              title: Text('Ask Me Anything'),
              backgroundColor: Colors.indigo.shade900,),
      body: Container(

        child: Center(



        child: Ball(),

      ),
      ),
      )
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
      child: Row(
        children: [
          Expanded(child: TextButton(
            onPressed: () {
              setState(() {
                ballNumber = Random().nextInt(5) +1;
              });
            },
          child: Image.asset('images/ball$ballNumber.png'),
          ))
        ],
      )
    );
  }
}






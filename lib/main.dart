import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MagicBall());
}

class MagicBall extends StatefulWidget {
  const MagicBall({Key? key}) : super(key: key);

  @override
  State<MagicBall> createState() => _MagicBallState();
}

class _MagicBallState extends State<MagicBall> {
  int ballNumber = 1;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Magic 8 ball',
            style: TextStyle(fontFamily: 'Koulen', fontSize: 40.0),
          ),
          centerTitle: true,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Ask me anything!',
              style: TextStyle(
                  fontFamily: 'Koulen', fontSize: 50.0, color: Colors.blue),
            ),
            TextButton(
              child: Image.asset('images/ball$ballNumber.png'),
              onPressed: () {
                setState(() {
                  ballNumber = Random().nextInt(5) + 1;
                });
              },
            )
          ],
        ),
      ),
    );
  }
}

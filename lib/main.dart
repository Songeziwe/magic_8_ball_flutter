import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Colors.lightBlue,
          appBar: AppBar(
            backgroundColor: Colors.blue,
            title: Text('Ask Me Anything'),
          ),
          body: const MagicBall(),
        ),
      ),
    );

class MagicBall extends StatefulWidget {
  const MagicBall({Key key}) : super(key: key);

  @override
  State<MagicBall> createState() => _MagicBallState();
}

class _MagicBallState extends State<MagicBall> {
  int imageNumber = 1;

  void updateImageNumber() {
    setState(() {
      imageNumber = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        child: Image.asset('images/ball$imageNumber.png'),
        onPressed: () => updateImageNumber(),
      ),
    );
  }
}

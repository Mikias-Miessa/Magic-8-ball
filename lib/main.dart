import 'dart:math';
import 'package:flutter/material.dart';

void main() => runApp(
      Magic_8_Ball(),
    );

class Magic_8_Ball extends StatefulWidget {
  const Magic_8_Ball({super.key});

  @override
  State<Magic_8_Ball> createState() => _Magic_8_BallState();
}

class _Magic_8_BallState extends State<Magic_8_Ball> {
  int imageNumber = 1;
  void onpressed() {
    setState(() {
      imageNumber = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blue[500],
        appBar: AppBar(
          title: Text(
            'Ask Me Anything',
            style: TextStyle(fontSize: 30),
          ),
          backgroundColor: Colors.blue[900],
        ),
        body: Center(
          child: TextButton(
            child: Padding(
              padding: const EdgeInsets.all(28.0),
              child: Image(
                image: AssetImage('images/ball$imageNumber.png'),
              ),
            ),
            onPressed: onpressed,
          ),
        ),
      ),
    );
  }
}

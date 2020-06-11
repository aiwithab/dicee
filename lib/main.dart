import 'dart:math';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(Dicee());
}

class Dicee extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dicee',
      debugShowCheckedModeBanner: false,
      home: DicePage(),
    );
  }
}

class DicePage extends StatefulWidget {

  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {

  int leftDiceNumber = 1;
  int rightDiceNumber = 1;


  randomiseNumber() {
    setState(() {
      leftDiceNumber = Random().nextInt(6) + 1;
      rightDiceNumber = Random().nextInt(6) + 1;
    });
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffa6dae8),
      appBar: AppBar(
        title: Text(
          'Dicee',
        ),
        backgroundColor: Color(0xffa6dae8),
        centerTitle: true,
      ),
      body: Center(
        child: Row(
          children: <Widget>[
            Expanded(
              child: FlatButton(
                onPressed: () {
                 randomiseNumber();
                },
                  child: Image.asset('assets/images/dice$leftDiceNumber.png')
              ),
            ),
            Expanded(
              child: FlatButton(
                  onPressed: () {
                    randomiseNumber();
                  },
                  child: Image.asset('assets/images/dice$rightDiceNumber.png')
              ),
            )
          ],
        ),
      ),
    );
  }
}

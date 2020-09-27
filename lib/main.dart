import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePageState(),
      ),
    ),
  );
}

class DicePageState extends StatefulWidget {
  @override
  _DicePageStateState createState() => _DicePageStateState();
}

class _DicePageStateState extends State<DicePageState> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;
  //Function
  void setstate() {
    leftDiceNumber = Random().nextInt(6) + 1;
    rightDiceNumber = Random().nextInt(6) + 1;
    print('Dice Number is $leftDiceNumber');
    print('Dice Number is $rightDiceNumber');
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: FlatButton(
                  onPressed: () {
                    setState(() {
                      setstate();
                    });
                  },
                  child: Image.asset(
                    'images/dice$leftDiceNumber.png',
                  )),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: FlatButton(
                onPressed: () {
                  setState(() {
                    setstate();
                  });
                },
                child: Image.asset('images/dice$rightDiceNumber.png'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

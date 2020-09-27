import 'package:flutter/material.dart';

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
                      leftDiceNumber = 5;
                      print('Dice Number is $leftDiceNumber');
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
                  print('Right button has been pressed');
                },
                child: Image.asset('images/dice1.png'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

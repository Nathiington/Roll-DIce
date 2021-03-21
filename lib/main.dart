import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xff58657a),
        appBar: AppBar(
          centerTitle: true,
          title: Text('Roll Dice'),
          backgroundColor: Color(0xff677da1),
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int topdice = 1;
  int bottomdice = 1;

  void randomize() {
    setState(() {
      topdice = Random().nextInt(6) + 1;
      bottomdice = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Expanded(
            child: TextButton(
              child: Padding(
                padding: const EdgeInsets.all(50.0),
                child: Image.asset('images/dice$topdice.png'),
              ),
              onPressed: () {
                randomize();
              },
            ),
          ),
          Expanded(
              child: TextButton(
            child: Padding(
              padding: const EdgeInsets.all(50.0),
              child: Image.asset('images/dice$bottomdice.png'),
            ),
            onPressed: () {
              randomize();
            },
          )),
        ],
      ),
    );
  }
}

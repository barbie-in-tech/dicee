import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red.shade100,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red.shade900,
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
  int left = 1;
  int right = 1;
  @override
  Widget build(BuildContext context) {

    return Center(

      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed: () {
                setState(() {
                  left = Random().nextInt(6) + 1;
                });
              },
              child: Image(
                color: Colors.yellow.shade800,
                image: AssetImage('images/dice$left.png'),

              ),
            ),),
          Expanded(
            child: FlatButton(
              onPressed: (){
                setState(() {
                  right = Random().nextInt(6) + 1;
                });
              },
              child: Image(

                image: AssetImage('images/dice$right.png'),
                color: Colors.yellow.shade800,
              ),
            ),
          ),
        ],

      ),
    );
  }
}

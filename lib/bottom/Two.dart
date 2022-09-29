import 'dart:developer' as dev;
import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Two extends StatefulWidget {

  @override
  _OneState createState() => _OneState();
}

class _OneState extends State<Two> {
  int LeftDice =6;
  int RightDice =4;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: const Text('My Dice'), 
        
        backgroundColor: Colors.purple[200] ,
        ),
        backgroundColor: Colors.purple[100] ,
      body: Center(
        child:Row(
        children: <Widget> [
          Expanded(
            child: TextButton(
              onPressed: () { 
                dev.log("Left Dice Clicked");
                final Random rand = Random();
                setState(() {
                  LeftDice = rand.nextInt(6) + 1; //0-5
                });
               },
              child:Image.asset("images/dice$LeftDice.png"),
            )
            ),
             Expanded(
            child: TextButton(
              onPressed: () { 
                dev.log("Right Dice Clicked");
                final Random rand = Random();
                setState(() {
                  RightDice = rand.nextInt(6) + 1; //0-5
                });
               },
              child:Image.asset("images/dice$RightDice.png"),
            )
            ),
        ]),
      )
    );
  }
}
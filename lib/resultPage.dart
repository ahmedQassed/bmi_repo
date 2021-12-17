import 'dart:ffi';

import 'package:flutter/material.dart';

class resultPage extends StatelessWidget {
  final int age;
  final bool isMale;
  final int weight;
  int height;
  final int result;

  resultPage(
      {required this.age,
      required this.isMale,
      required this.weight,
      required this.height,
      required this.result});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1D2136),
      appBar: AppBar(
        backgroundColor: Color(0xff1D2136),
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
              height = 160;
            },
            icon: Icon(Icons.keyboard_arrow_left)),
        title: Text('Result'),
      ),
      body: Padding(
        padding: EdgeInsets.all(15.0),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.0),
            color: Color(0xff323244),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Center(
                  child: yourCase(),
                ),
              ),
              Expanded(
                flex: 2,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '$result',
                      style: TextStyle(
                          fontSize: 150.0,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 2,
                child: Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        advice(),
                      ],
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget yourCase() {
    if (result >= 25) {
      return Text(
        'OverWeight',
        style: TextStyle(
          letterSpacing: 1.5,
          fontWeight: FontWeight.bold,
          fontSize: 25.0,
          color: Colors.red[900],
        ),
      );
    } else if (result > 18) {
      return Text(
        'Normal',
        style: TextStyle(
          letterSpacing: 1.5,
          fontWeight: FontWeight.bold,
          fontSize: 25.0,
          color: Colors.green,
        ),
      );
    } else {
      return Text(
        'UnderWeight',
        style: TextStyle(
          letterSpacing: 1.5,
          fontWeight: FontWeight.bold,
          fontSize: 25.0,
          color: Colors.orange,
        ),
      );
    }
  }

  Widget advice() {
    if (result >= 25) {
      return Text(
        'You have a higher than normal body weight.',
        textAlign: TextAlign.center,
        style: TextStyle(
          letterSpacing: 1.5,
          fontWeight: FontWeight.bold,
          fontSize: 20.0,
          color: Colors.white54,
        ),
      );
    } else if (result > 18) {
      return Text(
        'You have a normal body weight.',
        textAlign: TextAlign.center,
        style: TextStyle(
          letterSpacing: 1.5,
          fontWeight: FontWeight.bold,
          fontSize: 20.0,
          color: Colors.white54,
        ),
      );
    } else {
      return Text(
        'You have a lower than normal body weight.',
        textAlign: TextAlign.center,
        style: TextStyle(
          letterSpacing: 1.5,
          fontWeight: FontWeight.bold,
          fontSize: 20.0,
          color: Colors.white54,
        ),
      );
    }
  }
}

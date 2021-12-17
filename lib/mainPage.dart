import 'dart:math';

import 'package:bmi/resultPage.dart';
import 'package:flutter/material.dart';

class mainPage extends StatefulWidget {
  const mainPage({Key? key}) : super(key: key);

  @override
  _mainPageState createState() => _mainPageState();
}

class _mainPageState extends State<mainPage> {
  bool isMale = true;
  double hieght = 150;
  int age = 20;
  int weight = 50;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1D2136),
      appBar: AppBar(
        backgroundColor: Color(0xff1D2136),
        title: Text('BMI calculator'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(20.0),
              child: Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          isMale = true;
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.0),
                            color:
                                isMale ? Color(0xff323244) : Color(0xff24263B)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                                child: Icon(
                              Icons.male,
                              size: 90.0,
                              color: Colors.white,
                            )),
                            SizedBox(
                              height: 10.0,
                            ),
                            Text(
                              'MALE',
                              style: TextStyle(
                                  color: Color(0xff707080),
                                  letterSpacing: 1.5,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          isMale = false;
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.0),
                            color:
                                isMale ? Color(0xff24263B) : Color(0xff323244)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.female,
                              size: 90.0,
                              color: Colors.white,
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            Text(
                              'FEMALE',
                              style: TextStyle(
                                  letterSpacing: 1.5,
                                  color: Color(0xff707080),
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Container(
                decoration: BoxDecoration(
                    color: Color(0xff323244),
                    borderRadius: BorderRadius.circular(20.0)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'HIEGHT',
                      style: TextStyle(
                        letterSpacing: 1.5,
                        fontWeight: FontWeight.bold,
                        fontSize: 15.0,
                        color: Color(0xff707080),
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '${hieght.round()}',
                          style: TextStyle(
                              fontSize: 60.0,
                              color: Colors.white,
                              fontStyle: FontStyle.italic,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'cm',
                          style: TextStyle(
                            fontSize: 25.0,
                            color: Colors.white,
                            fontStyle: FontStyle.italic,
                          ),
                        ),
                      ],
                    ),
                    Slider(
                        value: hieght,
                        max: 200,
                        min: 120,
                        onChanged: (value) {
                          setState(() {
                            hieght = value;
                          });
                        })
                  ],
                ),
              ),
            ),
          ),
          Expanded(
              child: Padding(
            padding: EdgeInsets.all(20.0),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        color: Color(0xff323244)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'AGE',
                          style: TextStyle(
                            letterSpacing: 1.0,
                            fontSize: 15.0,
                            color: Color(0xff707080),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Text(
                          '$age',
                          style: TextStyle(
                              fontSize: 50.0,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontStyle: FontStyle.italic),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            FloatingActionButton(
                              onPressed: () {
                                setState(() {
                                  age > 20 ? age-- : null;
                                });
                              },
                              heroTag: 'age -',
                              mini: true,
                              child: Icon(Icons.remove),
                            ),
                            FloatingActionButton(
                              onPressed: () {
                                setState(() {
                                  age < 50 ? age++ : null;
                                });
                              },
                              heroTag: 'age +',
                              mini: true,
                              child: Icon(Icons.add),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: 20.0,
                ),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        color: Color(0xff323244)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'WEIGHT',
                          style: TextStyle(
                            letterSpacing: 1.5,
                            fontSize: 15.0,
                            color: Color(0xff707080),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Text(
                          '$weight',
                          style: TextStyle(
                              fontSize: 50.0,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontStyle: FontStyle.italic),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            FloatingActionButton(
                              onPressed: () {
                                setState(() {
                                  weight > 50 ? weight-- : null;
                                });
                              },
                              heroTag: 'weight -',
                              mini: true,
                              child: Icon(Icons.remove),
                            ),
                            FloatingActionButton(
                              onPressed: () {
                                setState(() {
                                  weight < 80 ? weight++ : null;
                                });
                              },
                              heroTag: 'weight +',
                              mini: true,
                              child: Icon(Icons.add),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )),
          Container(
            width: double.infinity,
            child: MaterialButton(
              height: 50.0,
              color: Colors.blue[700],
              onPressed: () {
                double re = weight / pow(hieght / 100, 2);

                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => resultPage(
                              age: age,
                              isMale: isMale,
                              weight: weight,
                              height: hieght.round(),
                              result: re.round(),
                            )));
              },
              child: Text(
                'Calculate',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.0),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

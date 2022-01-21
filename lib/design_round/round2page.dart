import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:quizapp/Day/round1/round3/num1.dart';
import 'package:quizapp/Household/round3/hs9.dart';
import 'package:quizapp/animals/round3/que7.dart';
import 'package:quizapp/body/bod16.dart';
import 'package:quizapp/body/round3/mix16.dart';
import 'package:quizapp/colors/round3/quest7.dart';
import 'package:quizapp/family/round3/fam9.dart';
import 'package:quizapp/flower/flo10.dart';
import 'package:quizapp/flower/round2/veg13.dart';
import 'package:quizapp/flower/round3/ins1.dart';
import 'package:quizapp/flower/round3/ins16.dart';
import 'package:quizapp/fruits/Round%201/Round2/question4.dart';
import 'package:quizapp/fruits/Round%201/Round3/question7.dart';
import 'package:quizapp/sports/round1/round3/Questio7.dart';

class Round2Page extends StatefulWidget {
  late int totalScore, level;
  Round2Page({required this.totalScore, required this.level});

  @override
  _Round2PageState createState() => _Round2PageState();
}

class _Round2PageState extends State<Round2Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              gradient: new LinearGradient(
            colors: [Colors.pink, Colors.lightGreenAccent],
            begin: const FractionalOffset(0.0, 0.0),
            end: const FractionalOffset(1.0, 0.0),
            stops: [0.0, 1.0],
            tileMode: TileMode.clamp,
          )),
          child: Container(
            margin: EdgeInsets.only(top: 30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Center(
                  child: Text(
                    "Great!!!",
                    style: TextStyle(
                        fontSize: 40.0,
                        fontFamily: 'Pacifico',
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
                SizedBox(
                  height: 30.0,
                ),
                Text(
                  "Your Score : " + widget.totalScore.toString(),
                  style: TextStyle(
                    fontSize: 40.0,
                    fontFamily: 'Pacifico',
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 50.0,
                ),
                Text(
                  "Round 3",
                  style: TextStyle(
                    fontSize: 40.0,
                    fontFamily: 'Pacifico',
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 40.0,
                ),
                if (widget.level == 1)
                  GestureDetector(
                    onTap: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  Question7(totalScore: widget.totalScore)));
                    },
                    child: Container(
                      padding: EdgeInsets.all(16),
                      decoration: BoxDecoration(color: Colors.blueAccent),
                      child: Text(
                        "START",
                        style: TextStyle(
                            fontSize: 25.0,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                if (widget.level == 2)
                  GestureDetector(
                    onTap: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  Questio7(totalScore: widget.totalScore)));
                    },
                    child: Container(
                      padding: EdgeInsets.all(16),
                      decoration: BoxDecoration(color: Colors.blueAccent),
                      child: Text(
                        "START",
                        style: TextStyle(
                            fontSize: 25.0,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                if (widget.level == 3)
                  GestureDetector(
                    onTap: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  Quest7(totalScore: widget.totalScore)));
                    },
                    child: Container(
                      padding: EdgeInsets.all(16),
                      decoration: BoxDecoration(color: Colors.blueAccent),
                      child: Text(
                        "START",
                        style: TextStyle(
                            fontSize: 25.0,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                if (widget.level == 4)
                  GestureDetector(
                    onTap: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  Que7(totalScore: widget.totalScore)));
                    },
                    child: Container(
                      padding: EdgeInsets.all(16),
                      decoration: BoxDecoration(color: Colors.blueAccent),
                      child: Text(
                        "START",
                        style: TextStyle(
                            fontSize: 25.0,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                if (widget.level == 5)
                  GestureDetector(
                    onTap: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  Num1(totalScore: widget.totalScore)));
                    },
                    child: Container(
                      padding: EdgeInsets.all(16),
                      decoration: BoxDecoration(color: Colors.blueAccent),
                      child: Text(
                        "START",
                        style: TextStyle(
                            fontSize: 25.0,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                if (widget.level == 6)
                  GestureDetector(
                    onTap: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  flo10(totalScore: widget.totalScore)));
                    },
                    child: Container(
                      padding: EdgeInsets.all(16),
                      decoration: BoxDecoration(color: Colors.blueAccent),
                      child: Text(
                        "START",
                        style: TextStyle(
                            fontSize: 25.0,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                if (widget.level == 7)
                  GestureDetector(
                    onTap: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  veg13(totalScore: widget.totalScore)));
                    },
                    child: Container(
                      padding: EdgeInsets.all(16),
                      decoration: BoxDecoration(color: Colors.blueAccent),
                      child: Text(
                        "START",
                        style: TextStyle(
                            fontSize: 25.0,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                if (widget.level == 8)
                  GestureDetector(
                    onTap: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  ins16(totalScore: widget.totalScore)));
                    },
                    child: Container(
                      padding: EdgeInsets.all(16),
                      decoration: BoxDecoration(color: Colors.blueAccent),
                      child: Text(
                        "START",
                        style: TextStyle(
                            fontSize: 25.0,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                if (widget.level == 9)
                  GestureDetector(
                    onTap: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  bod16(totalScore: widget.totalScore)));
                    },
                    child: Container(
                      padding: EdgeInsets.all(16),
                      decoration: BoxDecoration(color: Colors.blueAccent),
                      child: Text(
                        "START",
                        style: TextStyle(
                            fontSize: 25.0,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                if (widget.level == 10)
                  GestureDetector(
                    onTap: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  mix16(totalScore: widget.totalScore)));
                    },
                    child: Container(
                      padding: EdgeInsets.all(16),
                      decoration: BoxDecoration(color: Colors.blueAccent),
                      child: Text(
                        "START",
                        style: TextStyle(
                            fontSize: 25.0,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                if (widget.level == 11)
                  GestureDetector(
                    onTap: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  Fam9(totalScore: widget.totalScore)));
                    },
                    child: Container(
                      padding: EdgeInsets.all(16),
                      decoration: BoxDecoration(color: Colors.blueAccent),
                      child: Text(
                        "START",
                        style: TextStyle(
                            fontSize: 25.0,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                if (widget.level == 12)
                  GestureDetector(
                    onTap: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  hs9(totalScore: widget.totalScore)));
                    },
                    child: Container(
                      padding: EdgeInsets.all(16),
                      decoration: BoxDecoration(color: Colors.blueAccent),
                      child: Text(
                        "START",
                        style: TextStyle(
                            fontSize: 25.0,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
              ],
            ),
          )),
    );
  }
}

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:quizapp/body/round3/mix11.dart';
import 'package:quizapp/body/round3/mix15.dart';
import 'package:quizapp/body/round3/mix19.dart';
import 'package:quizapp/body/round3/mix23.dart';
import 'package:quizapp/body/round3/mix27.dart';
import 'package:quizapp/body/round3/mix3.dart';
import 'package:quizapp/body/round3/mix31.dart';
import 'package:quizapp/body/round3/mix35.dart';
import 'package:quizapp/body/round3/mix39.dart';
import 'package:quizapp/body/round3/mix43.dart';
import 'package:quizapp/body/round3/mix47.dart';
import 'package:quizapp/body/round3/mix7.dart';
import 'package:quizapp/design_round/roundover.dart';
import 'package:quizapp/fruits/Round%201/Round2/question5.dart';
import 'package:quizapp/fruits/Round%201/Round3/question13.dart';
import 'package:quizapp/fruits/Round%201/Round3/question9.dart';
import 'package:quizapp/pages/shared_pref.dart';

class mix50 extends StatefulWidget {
  late int totalScore;
  mix50({required this.totalScore});

  @override
  _mix50State createState() => _mix50State();
}

class _mix50State extends State<mix50> {
  int _counter = 4, a = 0, b = 0, c = 0;
  int finalScore = 0;
  late Timer _timer;

  void _startTimer() {
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        if (_counter > 0) {
          _counter--;
        } else {
          _timer.cancel();
          SharedPreferenceHelper().savecomplevel10("YES");
          SharedPreferenceHelper().saveUserLevel10(finalScore.toString());
          Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                  builder: (context) => RoundOver(
                        level: 10,
                        totalScore: widget.totalScore,
                      )));
        }
      });
    });
  }

  @override
  void initState() {
    _startTimer();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Random",
          style: TextStyle(fontSize: 24.0, fontFamily: 'Pacifico'),
        ),
      ),
      body: Container(
          margin: EdgeInsets.symmetric(vertical: 30.0, horizontal: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Text(
                  "Round 3",
                  style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Total Score  :" + widget.totalScore.toString(),
                    style:
                        TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Timer: " + "$_counter",
                    style: TextStyle(
                        fontSize: 22.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.redAccent),
                  ),
                ],
              ),
              SizedBox(
                height: 20.0,
              ),
              Center(
                child: Container(
                  margin:
                      EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
                  child: Text(
                    "zer",
                    style:
                        TextStyle(fontSize: 40.0, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              SizedBox(
                height: 30.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                      onTap: () {
                        a = 1;
                        setState(() {});
                      },
                      child: (a == 1)
                          ? Container(
                              width: 120.0,
                              height: 120.0,
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Colors.red, width: 5.0)),
                              child: Image.asset(
                                "images/cloud.jpg",
                                fit: BoxFit.cover,
                              ))
                          : Container(
                              width: 140.0,
                              height: 140.0,
                              child: Image.asset(
                                "images/cloud.jpg",
                                fit: BoxFit.cover,
                              ))),
                  GestureDetector(
                    onTap: () {
                      finalScore = widget.totalScore + 10;
                      _timer.cancel();
                      SharedPreferenceHelper().savecomplevel10("YES");
                      SharedPreferenceHelper()
                          .saveUserLevel10(finalScore.toString());
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => RoundOver(
                                  level: 10, totalScore: finalScore)));
                    },
                    child: Container(
                        width: 140.0,
                        height: 140.0,
                        child: Image.asset(
                          "images/yellow.png",
                          fit: BoxFit.cover,
                        )),
                  ),
                ],
              ),
              SizedBox(
                height: 30.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                      onTap: () {
                        b = 1;
                        setState(() {});
                      },
                      child: (b == 1)
                          ? Container(
                              width: 120.0,
                              height: 120.0,
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Colors.red, width: 5.0)),
                              child: Image.asset(
                                "images/computer.jpg",
                                fit: BoxFit.cover,
                              ))
                          : Container(
                              width: 120.0,
                              height: 120.0,
                              child: Image.asset(
                                "images/computer.jpg",
                                fit: BoxFit.cover,
                              ))),
                  GestureDetector(
                      onTap: () {
                        c = 1;
                        setState(() {});
                      },
                      child: (c == 1)
                          ? Container(
                              width: 120.0,
                              height: 120.0,
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Colors.red, width: 5.0)),
                              child: Image.asset(
                                "images/cycle.jpg",
                                fit: BoxFit.cover,
                              ))
                          : Container(
                              width: 120.0,
                              height: 120.0,
                              child: Image.asset(
                                "images/cycle.jpg",
                                fit: BoxFit.cover,
                              ))),
                ],
              ),
              SizedBox(
                height: 10.0,
              ),
            ],
          )),
    );
  }
}

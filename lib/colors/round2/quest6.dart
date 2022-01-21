import 'dart:async';

import 'package:flutter/material.dart';
import 'package:quizapp/colors/round3/quest7.dart';
import 'package:quizapp/design_round/round2page.dart';
import 'package:quizapp/fruits/Round%201/question2.dart';
import 'package:quizapp/sports/round1/Questio3.dart';

class Quest6 extends StatefulWidget {
  late int totalScore;
  Quest6({required this.totalScore});

  @override
  _Quest6State createState() => _Quest6State();
}

class _Quest6State extends State<Quest6> {
  int _counter = 6, a = 0, b = 0, c = 0;
  int finalScore = 0;
  late Timer _timer;

  void _startTimer() {
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        if (_counter > 0) {
          _counter--;
        } else {
          _timer.cancel();
          Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                  builder: (context) => Round2Page(
                        level: 3,
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
      backgroundColor: Colors.grey[800],
      appBar: AppBar(
        backgroundColor: Colors.orangeAccent,
        title: Text(
          "Colors",
          style: TextStyle(fontSize: 24.0, fontFamily: 'Pacifico'),
        ),
      ),
      body: Container(
          margin: EdgeInsets.symmetric(vertical: 22.0, horizontal: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Text(
                  "Round 2",
                  style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Total Score :  " + widget.totalScore.toString(),
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
                height: 10.0,
              ),
              Center(
                child: Container(
                  margin:
                      EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
                  child: Text(
                    "Sipî",
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
                      b = 1;
                      setState(() {});
                    },
                    child: (b == 1)
                        ? Container(
                            width: 120.0,
                            height: 120.0,
                            decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.red, width: 5.0)),
                            child: Image.asset(
                              "images/yellow.png",
                              fit: BoxFit.cover,
                            ))
                        : Container(
                            width: 120.0,
                            height: 120.0,
                            child: Image.asset(
                              "images/yellow.png",
                              fit: BoxFit.cover,
                            )),
                  ),
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
                                "images/green.png",
                                fit: BoxFit.cover,
                              ))
                          : Container(
                              width: 140.0,
                              height: 140.0,
                              child: Image.asset(
                                "images/green.png",
                                fit: BoxFit.cover,
                              ))),
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
                                "images/red.jpg",
                                fit: BoxFit.cover,
                              ))
                          : Container(
                              width: 120.0,
                              height: 120.0,
                              child: Image.asset(
                                "images/red.jpg",
                                fit: BoxFit.cover,
                              ))),
                  GestureDetector(
                    onTap: () {
                      finalScore = widget.totalScore + 10;
                      _timer.cancel();
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Round2Page(
                                    level: 3,
                                    totalScore: finalScore,
                                  )));
                    },
                    child: Container(
                      width: 140.0,
                      height: 140.0,
                      decoration: BoxDecoration(color: Colors.white),
                    ),
                  ),
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

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:quizapp/Day/round1/round3/num6.dart';
import 'package:quizapp/Day/round1/round3/num8.dart';
import 'package:quizapp/fruits/Round%201/question2.dart';
import 'package:quizapp/sports/round1/Questio2.dart';

class Num5 extends StatefulWidget {
  late int totalScore;
  Num5({required this.totalScore});

  @override
  _Num5State createState() => _Num5State();
}

class _Num5State extends State<Num5> {
  int _counter = 20, a = 0, b = 0, c = 0;
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
                  builder: (context) => Num8(
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
        backgroundColor: Colors.greenAccent,
        title: Text(
          "Number",
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
                  "Round 3",
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
                    "pênc",
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
                      finalScore = widget.totalScore + 10;
                      _timer.cancel();
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Num8(
                                    totalScore: finalScore,
                                  )));
                    },
                    child: Container(
                        width: 140.0,
                        height: 140.0,
                        child: Image.asset(
                          "images/five.png",
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
                                "images/fifteen.jpg",
                                fit: BoxFit.cover,
                              ))
                          : Container(
                              width: 140.0,
                              height: 140.0,
                              child: Image.asset(
                                "images/fifteen.jpg",
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
                              "images/sixteen.jpg",
                              fit: BoxFit.cover,
                            ))
                        : Container(
                            width: 120.0,
                            height: 120.0,
                            child: Image.asset(
                              "images/sixteen.jpg",
                              fit: BoxFit.cover,
                            )),
                  ),
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
                                "images/seventeen.png",
                                fit: BoxFit.cover,
                              ))
                          : Container(
                              width: 120.0,
                              height: 120.0,
                              child: Image.asset(
                                "images/seventeen.png",
                                fit: BoxFit.cover,
                              ))),
                ],
              ),
            ],
          )),
    );
  }
}

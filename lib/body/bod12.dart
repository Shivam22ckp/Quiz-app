import 'dart:async';

import 'package:flutter/material.dart';
import 'package:quizapp/body/bod13.dart';
import 'package:quizapp/body/bod5.dart';
import 'package:quizapp/body/bod9.dart';
import 'package:quizapp/fruits/Round%201/question3.dart';

class bod12 extends StatefulWidget {
  late int totalScore;
  bod12({required this.totalScore});

  @override
  _bod12State createState() => _bod12State();
}

class _bod12State extends State<bod12> {
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
                  builder: (context) => bod13(
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
          "Body Parts",
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
                  "Round 2",
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
                height: 20.0,
              ),
              Center(
                child: Container(
                  margin:
                      EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
                  child: Text(
                    "dev",
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
                              builder: (context) => bod13(
                                    totalScore: finalScore,
                                  )));
                    },
                    child: Container(
                        width: 140.0,
                        height: 140.0,
                        child: Image.asset(
                          "images/mouth.jpg",
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
                                "images/thigh.jpg",
                                fit: BoxFit.cover,
                              ))
                          : Container(
                              width: 140.0,
                              height: 140.0,
                              child: Image.asset(
                                "images/thigh.jpg",
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
                                  border: Border.all(
                                      color: Colors.red, width: 5.0)),
                              child: Image.asset(
                                "images/foot.jpg",
                                fit: BoxFit.cover,
                              ))
                          : Container(
                              width: 120.0,
                              height: 120.0,
                              child: Image.asset(
                                "images/foot.jpg",
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
                                "images/thumb.jpg",
                                fit: BoxFit.cover,
                              ))
                          : Container(
                              width: 120.0,
                              height: 120.0,
                              child: Image.asset(
                                "images/thumb.jpg",
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

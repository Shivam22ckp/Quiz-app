import 'package:flutter/material.dart';
import 'package:quizapp/Day/round1/round2/mon1.dart';
import 'package:quizapp/Household/round2/hs5.dart';
import 'package:quizapp/animals/round2/que4.dart';
import 'package:quizapp/body/bod7.dart';
import 'package:quizapp/body/round3/mix1.dart';
import 'package:quizapp/colors/round2/quest4.dart';
import 'package:quizapp/family/round2.dart/fam5.dart';
import 'package:quizapp/flower/flo6.dart';
import 'package:quizapp/flower/round2/veg1.dart';
import 'package:quizapp/flower/round2/veg7.dart';
import 'package:quizapp/flower/round3/ins9.dart';
import 'package:quizapp/fruits/Round%201/Round2/question4.dart';
import 'package:quizapp/sports/round1/round2/Questio4.dart';

class Round1Page extends StatefulWidget {
  late int totalScore, Level;
  Round1Page({required this.totalScore, required this.Level});

  @override
  _Round1PageState createState() => _Round1PageState();
}

class _Round1PageState extends State<Round1Page> {
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
                Text("Round 2",
                    style: TextStyle(
                      fontSize: 40.0,
                      fontFamily: 'Pacifico',
                      fontWeight: FontWeight.bold,
                    )),
                SizedBox(
                  height: 50.0,
                ),
                if (widget.Level == 1)
                  GestureDetector(
                    onTap: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  Question4(totalScore: widget.totalScore)));
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
                if (widget.Level == 2)
                  GestureDetector(
                    onTap: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  Questio4(totalScore: widget.totalScore)));
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
                if (widget.Level == 3)
                  GestureDetector(
                    onTap: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  Quest4(totalScore: widget.totalScore)));
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
                if (widget.Level == 4)
                  GestureDetector(
                    onTap: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  Que4(totalScore: widget.totalScore)));
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
                if (widget.Level == 5)
                  GestureDetector(
                    onTap: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  mon1(totalScore: widget.totalScore)));
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
                if (widget.Level == 6)
                  GestureDetector(
                    onTap: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  flo6(totalScore: widget.totalScore)));
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
                if (widget.Level == 7)
                  GestureDetector(
                    onTap: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  veg7(totalScore: widget.totalScore)));
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
                if (widget.Level == 8)
                  GestureDetector(
                    onTap: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  ins9(totalScore: widget.totalScore)));
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
                if (widget.Level == 9)
                  GestureDetector(
                    onTap: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  bod7(totalScore: widget.totalScore)));
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
                if (widget.Level == 10)
                  GestureDetector(
                    onTap: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  mix1(totalScore: widget.totalScore)));
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
                if (widget.Level == 11)
                  GestureDetector(
                    onTap: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  Fam5(totalScore: widget.totalScore)));
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
                if (widget.Level == 12)
                  GestureDetector(
                    onTap: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  hs5(totalScore: widget.totalScore)));
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

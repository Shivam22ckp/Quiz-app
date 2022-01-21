import 'package:flutter/material.dart';
import 'package:quizapp/fruits/Round%201/Round2/question4.dart';
import 'package:quizapp/fruits/Round%201/Round3/question7.dart';
import 'package:quizapp/pages/level.dart';
import 'package:quizapp/pages/shared_pref.dart';

class RoundOver extends StatefulWidget {
  late int totalScore, level;
  RoundOver({required this.totalScore, required this.level});

  @override
  _RoundOverState createState() => _RoundOverState();
}

class _RoundOverState extends State<RoundOver> {
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
            margin: EdgeInsets.only(top: 40.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Center(
                  child: Text(
                    "Congratulation!!!",
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
                if (widget.level == 1)
                  Text(
                    "Level 1",
                    style: TextStyle(
                      fontSize: 40.0,
                      fontFamily: 'Pacifico',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                if (widget.level == 2)
                  Text(
                    "Level 2",
                    style: TextStyle(
                      fontSize: 40.0,
                      fontFamily: 'Pacifico',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                if (widget.level == 3)
                  Text(
                    "Level 3",
                    style: TextStyle(
                      fontSize: 40.0,
                      fontFamily: 'Pacifico',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                if (widget.level == 4)
                  Text(
                    "Level 4",
                    style: TextStyle(
                      fontSize: 40.0,
                      fontFamily: 'Pacifico',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                if (widget.level == 5)
                  Text(
                    "Level 5",
                    style: TextStyle(
                      fontSize: 40.0,
                      fontFamily: 'Pacifico',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                if (widget.level == 65)
                  Text(
                    "Level 6",
                    style: TextStyle(
                      fontSize: 40.0,
                      fontFamily: 'Pacifico',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                if (widget.level == 7)
                  Text(
                    "Level 7",
                    style: TextStyle(
                      fontSize: 40.0,
                      fontFamily: 'Pacifico',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                if (widget.level == 8)
                  Text(
                    "Level 8",
                    style: TextStyle(
                      fontSize: 40.0,
                      fontFamily: 'Pacifico',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                if (widget.level == 9)
                  Text(
                    "Level 9",
                    style: TextStyle(
                      fontSize: 40.0,
                      fontFamily: 'Pacifico',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                if (widget.level == 10)
                  Text(
                    "Level 10",
                    style: TextStyle(
                      fontSize: 40.0,
                      fontFamily: 'Pacifico',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                if (widget.level == 11)
                  Text(
                    "Level 11",
                    style: TextStyle(
                      fontSize: 40.0,
                      fontFamily: 'Pacifico',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                if (widget.level == 12)
                  Text(
                    "Level 12",
                    style: TextStyle(
                      fontSize: 40.0,
                      fontFamily: 'Pacifico',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                SizedBox(
                  height: 20.0,
                ),
                Text(
                  "Completed",
                  style: TextStyle(
                    fontSize: 40.0,
                    fontFamily: 'Pacifico',
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Text("Total Score :" + widget.totalScore.toString(),
                    style: TextStyle(
                      fontSize: 40.0,
                      fontFamily: 'Pacifico',
                      fontWeight: FontWeight.bold,
                    )),
                SizedBox(
                  height: 50.0,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => Level()));
                  },
                  child: Container(
                    padding: EdgeInsets.all(16),
                    decoration: BoxDecoration(color: Colors.blueAccent),
                    child: Text(
                      "Main Menu",
                      style: TextStyle(
                          fontSize: 25.0,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                )
              ],
            ),
          )),
    );
  }
}

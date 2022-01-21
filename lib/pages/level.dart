import 'package:flutter/material.dart';
import 'package:quizapp/Day/round1/day1.dart';
import 'package:quizapp/Household/hs1.dart';
import 'package:quizapp/animals/que1.dart';
import 'package:quizapp/body/bod1.dart';
import 'package:quizapp/body/bod2.dart';
import 'package:quizapp/body/round2/red1.dart';
import 'package:quizapp/colors/quest1.dart';
import 'package:quizapp/family/fam1.dart';
import 'package:quizapp/flower/flo1.dart';
import 'package:quizapp/flower/round2/veg1.dart';
import 'package:quizapp/flower/round3/ins1.dart';
import 'package:quizapp/fruits/Round%201/question1.dart';
import 'package:quizapp/pages/shared_pref.dart';
import 'package:quizapp/sports/round1/Questio1.dart';
import 'package:toast/toast.dart';

class Level extends StatefulWidget {
  Level({Key? key}) : super(key: key);

  @override
  _LevelState createState() => _LevelState();
}

class _LevelState extends State<Level> {
  String? levelpassed = "NO",
      nextlevel = "NO",
      anotherlevel = "NO",
      complevel = "NO",
      complevel7 = "NO",
      complevel8 = "NO",
      complevel9 = "NO",
      complevel10 = "NO",
      complevel11 = "NO",
      complevel12 = "NO",
      level1score = "NO",
      level2score = "NO",
      level3score = "NO",
      level4score = "NO",
      level5score = "NO",
      level6score = "NO",
      level7score = "NO",
      level8score = "NO",
      level9score = "NO",
      level10score = "NO",
      level11score = "NO",
      level12score = "NO",
      levelmore = "NO";

  getMyInfoFromSharedPreference() async {
    levelpassed = await SharedPreferenceHelper().getUserName();
    nextlevel = await SharedPreferenceHelper().getUserEmail();
    anotherlevel = await SharedPreferenceHelper().getUserAddress();
    levelmore = await SharedPreferenceHelper().getUserPhone();
    complevel = await SharedPreferenceHelper().getUsercomp6();
    complevel7 = await SharedPreferenceHelper().getUsercomp7();
    complevel8 = await SharedPreferenceHelper().getUsercomp8();
    complevel9 = await SharedPreferenceHelper().getUsercomp9();
    complevel10 = await SharedPreferenceHelper().getUsercomp10();
    complevel11 = await SharedPreferenceHelper().getUsercomp11();
    complevel12 = await SharedPreferenceHelper().getUsercomp12();
    level1score = await SharedPreferenceHelper().getUserLevel1();
    level2score = await SharedPreferenceHelper().getUserLevel2();
    level3score = await SharedPreferenceHelper().getUserLevel3();
    level4score = await SharedPreferenceHelper().getUserLevel4();
    level5score = await SharedPreferenceHelper().getUserLevel5();
    level6score = await SharedPreferenceHelper().getUserLevel6();
    level7score = await SharedPreferenceHelper().getUserLevel7();
    level8score = await SharedPreferenceHelper().getUserLevel8();
    level9score = await SharedPreferenceHelper().getUserLevel9();
    level10score = await SharedPreferenceHelper().getUserLevel10();
    level11score = await SharedPreferenceHelper().getUserLevel11();
    level12score = await SharedPreferenceHelper().getUserLevel12();
  }

  doThisOnLaunch() async {
    await getMyInfoFromSharedPreference();

    setState(() {});
  }

  @override
  void initState() {
    doThisOnLaunch();
    setState(() {});
    super.initState();
  }

  Widget fruit() {
    return GestureDetector(
      onTap: () {
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => Question1()));
      },
      child: Container(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                width: 100,
                height: 90,
                child: Image.asset(
                  "images/fruits.jpg",
                  fit: BoxFit.cover,
                )),
            SizedBox(
              width: 20.0,
            ),
            Column(
              children: [
                Text(
                  "Fruits",
                  style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 10.0),
                Text(
                  "Level 1",
                  style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(
              width: 70.0,
            ),
            Column(
              children: [
                Text(
                  "Score :",
                  style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10.0,
                ),
                if (level1score != null)
                  Text(
                    level1score! + "/120",
                    style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.green),
                  ),
                if (level1score == null)
                  Text(
                    "0" + "/120",
                    style:
                        TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                  ),
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget sports() {
    return levelpassed == "YES"
        ? GestureDetector(
            onTap: () {
              Navigator.pushReplacement(
                  context, MaterialPageRoute(builder: (context) => Questio1()));
            },
            child: Container(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                      width: 100,
                      height: 90,
                      child: Image.asset(
                        "images/sports.jpg",
                        fit: BoxFit.cover,
                      )),
                  SizedBox(
                    width: 20.0,
                  ),
                  Column(
                    children: [
                      Text(
                        "Sports",
                        style: TextStyle(
                            fontSize: 20.0, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 10.0),
                      Text(
                        "Level 2",
                        style: TextStyle(
                            fontSize: 20.0, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 70.0,
                  ),
                  Column(
                    children: [
                      Text(
                        "Score :",
                        style: TextStyle(
                            fontSize: 18.0, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      if (level2score != null)
                        Text(
                          level2score! + "/120",
                          style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.green),
                        ),
                      if (level2score == null)
                        Text(
                          "0" + "/120",
                          style: TextStyle(
                              fontSize: 18.0, fontWeight: FontWeight.bold),
                        ),
                    ],
                  )
                ],
              ),
            ),
          )
        : GestureDetector(
            onTap: () {
              Toast.show("Please Complete Level 1", context,
                  duration: Toast.LENGTH_SHORT, gravity: Toast.BOTTOM);
            },
            child: Container(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                      width: 100,
                      height: 90,
                      child: Image.asset(
                        "images/sports.jpg",
                        fit: BoxFit.cover,
                      )),
                  SizedBox(
                    width: 20.0,
                  ),
                  Column(
                    children: [
                      Text(
                        "Sports",
                        style: TextStyle(
                            fontSize: 20.0, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 10.0),
                      Text(
                        "Level 2",
                        style: TextStyle(
                            fontSize: 20.0, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 70.0,
                  ),
                  Column(
                    children: [
                      Text(
                        "Score :",
                        style: TextStyle(
                            fontSize: 18.0, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      if (level2score != null)
                        Text(
                          level2score! + "/120",
                          style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.green),
                        ),
                      if (level2score == null)
                        Text(
                          "0" + "/120",
                          style: TextStyle(
                              fontSize: 18.0, fontWeight: FontWeight.bold),
                        ),
                    ],
                  )
                ],
              ),
            ),
          );
  }

  Widget colors() {
    return nextlevel == "YES"
        ? GestureDetector(
            onTap: () {
              Navigator.pushReplacement(
                  context, MaterialPageRoute(builder: (context) => Quest1()));
            },
            child: Container(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                      width: 100,
                      height: 90,
                      child: Image.asset(
                        "images/colors.png",
                        fit: BoxFit.cover,
                      )),
                  SizedBox(
                    width: 20.0,
                  ),
                  Column(
                    children: [
                      Text(
                        "Colors",
                        style: TextStyle(
                            fontSize: 20.0, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 10.0),
                      Text(
                        "Level 3",
                        style: TextStyle(
                            fontSize: 20.0, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 70.0,
                  ),
                  Column(
                    children: [
                      Text(
                        "Score :",
                        style: TextStyle(
                            fontSize: 18.0, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      if (level3score != null)
                        Text(
                          level3score! + "/140",
                          style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.green),
                        ),
                      if (level3score == null)
                        Text(
                          "0" + "/140",
                          style: TextStyle(
                              fontSize: 18.0, fontWeight: FontWeight.bold),
                        ),
                    ],
                  )
                ],
              ),
            ),
          )
        : GestureDetector(
            onTap: () {
              Toast.show("Please Complete Level 2", context,
                  duration: Toast.LENGTH_SHORT, gravity: Toast.BOTTOM);
            },
            child: Container(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                      width: 100,
                      height: 90,
                      child: Image.asset(
                        "images/colors.png",
                        fit: BoxFit.cover,
                      )),
                  SizedBox(
                    width: 20.0,
                  ),
                  Column(
                    children: [
                      Text(
                        "Colors",
                        style: TextStyle(
                            fontSize: 20.0, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 10.0),
                      Text(
                        "Level 3",
                        style: TextStyle(
                            fontSize: 20.0, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 70.0,
                  ),
                  Column(
                    children: [
                      Text(
                        "Score :",
                        style: TextStyle(
                            fontSize: 18.0, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      if (level3score != null)
                        Text(
                          level3score! + "/140",
                          style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.green),
                        ),
                      if (level3score == null)
                        Text(
                          "0" + "/140",
                          style: TextStyle(
                              fontSize: 18.0, fontWeight: FontWeight.bold),
                        ),
                    ],
                  )
                ],
              ),
            ),
          );
  }

  Widget wildanimals() {
    return anotherlevel == "YES"
        ? GestureDetector(
            onTap: () {
              Navigator.pushReplacement(
                  context, MaterialPageRoute(builder: (context) => Que1()));
            },
            child: Container(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                      width: 100,
                      height: 90,
                      child: Image.asset(
                        "images/wildanimals.jpg",
                        fit: BoxFit.cover,
                      )),
                  SizedBox(
                    width: 20.0,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Wild Animals",
                        style: TextStyle(
                            fontSize: 20.0, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 10.0),
                      Text(
                        "Level 4",
                        style: TextStyle(
                            fontSize: 20.0, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Column(
                    children: [
                      Text(
                        "Score :",
                        style: TextStyle(
                            fontSize: 18.0, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      if (level4score != null)
                        Text(
                          level4score! + "/120",
                          style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.green),
                        ),
                      if (level4score == null)
                        Text(
                          "0" + "/120",
                          style: TextStyle(
                              fontSize: 18.0, fontWeight: FontWeight.bold),
                        ),
                    ],
                  )
                ],
              ),
            ),
          )
        : GestureDetector(
            onTap: () {
              Toast.show("Please Complete Level 3", context,
                  duration: Toast.LENGTH_SHORT, gravity: Toast.BOTTOM);
            },
            child: Container(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                      width: 100,
                      height: 90,
                      child: Image.asset(
                        "images/wildanimals.jpg",
                        fit: BoxFit.cover,
                      )),
                  SizedBox(
                    width: 20.0,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Wild Animals",
                        style: TextStyle(
                            fontSize: 20.0, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 10.0),
                      Text(
                        "Level 4",
                        style: TextStyle(
                            fontSize: 20.0, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Column(
                    children: [
                      Text(
                        "Score :",
                        style: TextStyle(
                            fontSize: 18.0, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      if (level4score != null)
                        Text(
                          level4score! + "/120",
                          style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.green),
                        ),
                      if (level4score == null)
                        Text(
                          "0" + "/120",
                          style: TextStyle(
                              fontSize: 18.0, fontWeight: FontWeight.bold),
                        ),
                    ],
                  )
                ],
              ),
            ),
          );
  }

  Widget Day() {
    return levelmore == "YES"
        ? GestureDetector(
            onTap: () {
              Navigator.pushReplacement(
                  context, MaterialPageRoute(builder: (context) => Day1()));
            },
            child: Container(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                      width: 100,
                      height: 90,
                      child: Image.asset(
                        "images/monday.jpg",
                        fit: BoxFit.cover,
                      )),
                  SizedBox(
                    width: 20.0,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Days",
                        style: TextStyle(
                            fontSize: 20.0, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 10.0),
                      Text(
                        "Level 5",
                        style: TextStyle(
                            fontSize: 20.0, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 60.0,
                  ),
                  Column(
                    children: [
                      Text(
                        "Score :",
                        style: TextStyle(
                            fontSize: 18.0, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      if (level5score != null)
                        Text(
                          level5score! + "/360",
                          style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.green),
                        ),
                      if (level5score == null)
                        Text(
                          "0" + "/360",
                          style: TextStyle(
                              fontSize: 18.0, fontWeight: FontWeight.bold),
                        ),
                    ],
                  )
                ],
              ),
            ),
          )
        : GestureDetector(
            onTap: () {
              Navigator.pushReplacement(
                  context, MaterialPageRoute(builder: (context) => Day1()));
            },
            child: Container(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                      width: 100,
                      height: 90,
                      child: Image.asset(
                        "images/monday.jpg",
                        fit: BoxFit.cover,
                      )),
                  SizedBox(
                    width: 40.0,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Day",
                        style: TextStyle(
                            fontSize: 20.0, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 10.0),
                      Text(
                        "Level 5",
                        style: TextStyle(
                            fontSize: 20.0, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 60.0,
                  ),
                  Column(
                    children: [
                      Text(
                        "Score :",
                        style: TextStyle(
                            fontSize: 18.0, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      if (level5score != null)
                        Text(
                          level5score! + "/360",
                          style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.green),
                        ),
                      if (level5score == null)
                        Text(
                          "0" + "/360",
                          style: TextStyle(
                              fontSize: 18.0, fontWeight: FontWeight.bold),
                        ),
                    ],
                  )
                ],
              ),
            ),
          );
  }

  Widget Birds() {
    return complevel == "YES"
        ? GestureDetector(
            onTap: () {
              Navigator.pushReplacement(
                  context, MaterialPageRoute(builder: (context) => flo1()));
            },
            child: Container(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                      width: 100,
                      height: 90,
                      child: Image.asset(
                        "images/croe.jpg",
                        fit: BoxFit.cover,
                      )),
                  SizedBox(
                    width: 20.0,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Birds",
                        style: TextStyle(
                            fontSize: 20.0, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 10.0),
                      Text(
                        "Level 6",
                        style: TextStyle(
                            fontSize: 20.0, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 60.0,
                  ),
                  Column(
                    children: [
                      Text(
                        "Score :",
                        style: TextStyle(
                            fontSize: 18.0, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      if (level6score != null)
                        Text(
                          level6score! + "/120",
                          style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.green),
                        ),
                      if (level6score == null)
                        Text(
                          "0" + "/120",
                          style: TextStyle(
                              fontSize: 18.0, fontWeight: FontWeight.bold),
                        ),
                    ],
                  )
                ],
              ),
            ),
          )
        : GestureDetector(
            onTap: () {
              Navigator.pushReplacement(
                  context, MaterialPageRoute(builder: (context) => flo1()));
            },
            child: Container(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                      width: 100,
                      height: 90,
                      child: Image.asset(
                        "images/croe.jpg",
                        fit: BoxFit.cover,
                      )),
                  SizedBox(
                    width: 20.0,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Birds",
                        style: TextStyle(
                            fontSize: 20.0, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 10.0),
                      Text(
                        "Level 6",
                        style: TextStyle(
                            fontSize: 20.0, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 60.0,
                  ),
                  Column(
                    children: [
                      Text(
                        "Score :",
                        style: TextStyle(
                            fontSize: 18.0, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      if (level6score != null)
                        Text(
                          level6score! + "/120",
                          style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.green),
                        ),
                      if (level6score == null)
                        Text(
                          "0" + "/120",
                          style: TextStyle(
                              fontSize: 18.0, fontWeight: FontWeight.bold),
                        ),
                    ],
                  )
                ],
              ),
            ),
          );
  }

  Widget Vegetable() {
    return complevel7 == "YES"
        ? GestureDetector(
            onTap: () {
              Navigator.pushReplacement(
                  context, MaterialPageRoute(builder: (context) => veg1()));
            },
            child: Container(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                      width: 100,
                      height: 90,
                      child: Image.asset(
                        "images/tomato.jpg",
                        fit: BoxFit.cover,
                      )),
                  SizedBox(
                    width: 20.0,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Vegetables",
                        style: TextStyle(
                            fontSize: 20.0, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 10.0),
                      Text(
                        "Level 7",
                        style: TextStyle(
                            fontSize: 20.0, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                  Column(
                    children: [
                      Text(
                        "Score :",
                        style: TextStyle(
                            fontSize: 18.0, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      if (level7score != null)
                        Text(
                          level7score! + "/200",
                          style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.green),
                        ),
                      if (level7score == null)
                        Text(
                          "0" + "/200",
                          style: TextStyle(
                              fontSize: 18.0, fontWeight: FontWeight.bold),
                        ),
                    ],
                  )
                ],
              ),
            ),
          )
        : GestureDetector(
            onTap: () {
              Navigator.pushReplacement(
                  context, MaterialPageRoute(builder: (context) => veg1()));
            },
            child: Container(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                      width: 100,
                      height: 90,
                      child: Image.asset(
                        "images/tomato.jpg",
                        fit: BoxFit.cover,
                      )),
                  SizedBox(
                    width: 20.0,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Vegetables",
                        style: TextStyle(
                            fontSize: 20.0, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 10.0),
                      Text(
                        "Level 7",
                        style: TextStyle(
                            fontSize: 20.0, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 40.0,
                  ),
                  Column(
                    children: [
                      Text(
                        "Score :",
                        style: TextStyle(
                            fontSize: 18.0, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      if (level7score != null)
                        Text(
                          level7score! + "/200",
                          style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.green),
                        ),
                      if (level7score == null)
                        Text(
                          "0" + "/200",
                          style: TextStyle(
                              fontSize: 18.0, fontWeight: FontWeight.bold),
                        ),
                    ],
                  )
                ],
              ),
            ),
          );
  }

  Widget Insects() {
    return complevel8 == "YES"
        ? GestureDetector(
            onTap: () {
              Navigator.pushReplacement(
                  context, MaterialPageRoute(builder: (context) => ins1()));
            },
            child: Container(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                      width: 100,
                      height: 90,
                      child: Image.asset(
                        "images/mosquito.jpg",
                        fit: BoxFit.cover,
                      )),
                  SizedBox(
                    width: 20.0,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Insects",
                        style: TextStyle(
                            fontSize: 20.0, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 10.0),
                      Text(
                        "Level 8",
                        style: TextStyle(
                            fontSize: 20.0, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 60.0,
                  ),
                  Column(
                    children: [
                      Text(
                        "Score :",
                        style: TextStyle(
                            fontSize: 18.0, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      if (level8score != null)
                        Text(
                          level8score! + "/220",
                          style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.green),
                        ),
                      if (level8score == null)
                        Text(
                          "0" + "/220",
                          style: TextStyle(
                              fontSize: 18.0, fontWeight: FontWeight.bold),
                        ),
                    ],
                  )
                ],
              ),
            ),
          )
        : GestureDetector(
            onTap: () {
              Navigator.pushReplacement(
                  context, MaterialPageRoute(builder: (context) => ins1()));
            },
            child: Container(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                      width: 100,
                      height: 90,
                      child: Image.asset(
                        "images/mosquito.jpg",
                        fit: BoxFit.cover,
                      )),
                  SizedBox(
                    width: 20.0,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Insects",
                        style: TextStyle(
                            fontSize: 20.0, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 10.0),
                      Text(
                        "Level 8",
                        style: TextStyle(
                            fontSize: 20.0, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 60.0,
                  ),
                  Column(
                    children: [
                      Text(
                        "Score :",
                        style: TextStyle(
                            fontSize: 18.0, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      if (level8score != null)
                        Text(
                          level4score! + "/220",
                          style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.green),
                        ),
                      if (level8score == null)
                        Text(
                          "0" + "/220",
                          style: TextStyle(
                              fontSize: 18.0, fontWeight: FontWeight.bold),
                        ),
                    ],
                  )
                ],
              ),
            ),
          );
  }

  Widget Body() {
    return complevel9 == "YES"
        ? GestureDetector(
            onTap: () {
              Navigator.pushReplacement(
                  context, MaterialPageRoute(builder: (context) => bod2()));
            },
            child: Container(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                      width: 100,
                      height: 90,
                      child: Image.asset(
                        "images/body.jpg",
                        fit: BoxFit.cover,
                      )),
                  SizedBox(
                    width: 40.0,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Body",
                        style: TextStyle(
                            fontSize: 20.0, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 10.0),
                      Text(
                        "Level 9",
                        style: TextStyle(
                            fontSize: 20.0, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 40.0,
                  ),
                  Column(
                    children: [
                      Text(
                        "Score :",
                        style: TextStyle(
                            fontSize: 18.0, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      if (level9score != null)
                        Text(
                          level9score! + "/240",
                          style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.green),
                        ),
                      if (level9score == null)
                        Text(
                          "0" + "/240",
                          style: TextStyle(
                              fontSize: 18.0, fontWeight: FontWeight.bold),
                        ),
                    ],
                  )
                ],
              ),
            ),
          )
        : GestureDetector(
            onTap: () {
              Navigator.pushReplacement(
                  context, MaterialPageRoute(builder: (context) => bod1()));
            },
            child: Container(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                      width: 100,
                      height: 90,
                      child: Image.asset(
                        "images/body.jpg",
                        fit: BoxFit.cover,
                      )),
                  SizedBox(
                    width: 20.0,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Body",
                        style: TextStyle(
                            fontSize: 20.0, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 10.0),
                      Text(
                        "Level 9",
                        style: TextStyle(
                            fontSize: 20.0, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 60.0,
                  ),
                  Column(
                    children: [
                      Text(
                        "Score :",
                        style: TextStyle(
                            fontSize: 18.0, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      if (level9score != null)
                        Text(
                          level9score! + "/240",
                          style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.green),
                        ),
                      if (level9score == null)
                        Text(
                          "0" + "/240",
                          style: TextStyle(
                              fontSize: 18.0, fontWeight: FontWeight.bold),
                        ),
                    ],
                  )
                ],
              ),
            ),
          );
  }

  Widget Random() {
    return complevel10 == "YES"
        ? GestureDetector(
            onTap: () {
              Navigator.pushReplacement(
                  context, MaterialPageRoute(builder: (context) => red1()));
            },
            child: Container(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                      width: 100,
                      height: 90,
                      child: Image.asset(
                        "images/book.jpg",
                        fit: BoxFit.cover,
                      )),
                  SizedBox(
                    width: 20.0,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Random",
                        style: TextStyle(
                            fontSize: 20.0, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 10.0),
                      Text(
                        "Level 10",
                        style: TextStyle(
                            fontSize: 20.0, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 40.0,
                  ),
                  Column(
                    children: [
                      Text(
                        "Score :",
                        style: TextStyle(
                            fontSize: 18.0, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      if (level10score != null)
                        Text(
                          level10score! + "/780",
                          style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.green),
                        ),
                      if (level10score == null)
                        Text(
                          "0" + "/780",
                          style: TextStyle(
                              fontSize: 18.0, fontWeight: FontWeight.bold),
                        ),
                    ],
                  )
                ],
              ),
            ),
          )
        : GestureDetector(
            onTap: () {
              Navigator.pushReplacement(
                  context, MaterialPageRoute(builder: (context) => red1()));
            },
            child: Container(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                      width: 100,
                      height: 90,
                      child: Image.asset(
                        "images/book.jpg",
                        fit: BoxFit.cover,
                      )),
                  SizedBox(
                    width: 20.0,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Random",
                        style: TextStyle(
                            fontSize: 20.0, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 10.0),
                      Text(
                        "Level 10",
                        style: TextStyle(
                            fontSize: 20.0, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 60.0,
                  ),
                  Column(
                    children: [
                      Text(
                        "Score :",
                        style: TextStyle(
                            fontSize: 18.0, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      if (level10score != null)
                        Text(
                          level10score! + "/780",
                          style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.green),
                        ),
                      if (level10score == null)
                        Text(
                          "0" + "/780",
                          style: TextStyle(
                              fontSize: 18.0, fontWeight: FontWeight.bold),
                        ),
                    ],
                  )
                ],
              ),
            ),
          );
  }

  Widget Family() {
    return complevel11 == "YES"
        ? GestureDetector(
            onTap: () {
              Navigator.pushReplacement(
                  context, MaterialPageRoute(builder: (context) => Fam1()));
            },
            child: Container(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                      width: 100,
                      height: 90,
                      child: Image.asset(
                        "images/mother.jpg",
                        fit: BoxFit.cover,
                      )),
                  SizedBox(
                    width: 20.0,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Family",
                        style: TextStyle(
                            fontSize: 20.0, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 10.0),
                      Text(
                        "Level 11",
                        style: TextStyle(
                            fontSize: 20.0, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 40.0,
                  ),
                  Column(
                    children: [
                      Text(
                        "Score :",
                        style: TextStyle(
                            fontSize: 18.0, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      if (level11score != null)
                        Text(
                          level11score! + "/120",
                          style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.green),
                        ),
                      if (level11score == null)
                        Text(
                          "0" + "/120",
                          style: TextStyle(
                              fontSize: 18.0, fontWeight: FontWeight.bold),
                        ),
                    ],
                  )
                ],
              ),
            ),
          )
        : GestureDetector(
            onTap: () {
              Navigator.pushReplacement(
                  context, MaterialPageRoute(builder: (context) => Fam1()));
            },
            child: Container(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                      width: 100,
                      height: 90,
                      child: Image.asset(
                        "images/mother.jpg",
                        fit: BoxFit.cover,
                      )),
                  SizedBox(
                    width: 20.0,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Family",
                        style: TextStyle(
                            fontSize: 20.0, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 10.0),
                      Text(
                        "Level 11",
                        style: TextStyle(
                            fontSize: 20.0, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 60.0,
                  ),
                  Column(
                    children: [
                      Text(
                        "Score :",
                        style: TextStyle(
                            fontSize: 18.0, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      if (level11score != null)
                        Text(
                          level11score! + "/120",
                          style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.green),
                        ),
                      if (level11score == null)
                        Text(
                          "0" + "/120",
                          style: TextStyle(
                              fontSize: 18.0, fontWeight: FontWeight.bold),
                        ),
                    ],
                  )
                ],
              ),
            ),
          );
  }

  Widget Household() {
    return complevel12 == "YES"
        ? GestureDetector(
            onTap: () {
              Navigator.pushReplacement(
                  context, MaterialPageRoute(builder: (context) => Hs1()));
            },
            child: Container(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                      width: 100,
                      height: 90,
                      child: Image.asset(
                        "images/lamp.jpg",
                        fit: BoxFit.cover,
                      )),
                  SizedBox(
                    width: 20.0,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Household",
                        style: TextStyle(
                            fontSize: 20.0, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 10.0),
                      Text(
                        "Level 12",
                        style: TextStyle(
                            fontSize: 20.0, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 40.0,
                  ),
                  Column(
                    children: [
                      Text(
                        "Score :",
                        style: TextStyle(
                            fontSize: 18.0, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      if (level12score != null)
                        Text(
                          level12score! + "/120",
                          style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.green),
                        ),
                      if (level12score == null)
                        Text(
                          "0" + "/120",
                          style: TextStyle(
                              fontSize: 18.0, fontWeight: FontWeight.bold),
                        ),
                    ],
                  )
                ],
              ),
            ),
          )
        : GestureDetector(
            onTap: () {
              Navigator.pushReplacement(
                  context, MaterialPageRoute(builder: (context) => Hs1()));
            },
            child: Container(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                      width: 100,
                      height: 90,
                      child: Image.asset(
                        "images/lamp.jpg",
                        fit: BoxFit.cover,
                      )),
                  SizedBox(
                    width: 20.0,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Hosehold",
                        style: TextStyle(
                            fontSize: 20.0, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 10.0),
                      Text(
                        "Level 12",
                        style: TextStyle(
                            fontSize: 20.0, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 60.0,
                  ),
                  Column(
                    children: [
                      Text(
                        "Score :",
                        style: TextStyle(
                            fontSize: 18.0, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      if (level12score != null)
                        Text(
                          level12score! + "/120",
                          style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.green),
                        ),
                      if (level12score == null)
                        Text(
                          "0" + "/120",
                          style: TextStyle(
                              fontSize: 18.0, fontWeight: FontWeight.bold),
                        ),
                    ],
                  )
                ],
              ),
            ),
          );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Levels",
          style: TextStyle(fontSize: 30.0, fontFamily: 'Pacifico'),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
          child: Column(
            children: [
              fruit(),
              Divider(
                color: Colors.black,
              ),
              SizedBox(
                height: 20.0,
              ),
              sports(),
              Divider(
                color: Colors.black,
              ),
              SizedBox(
                height: 20.0,
              ),
              colors(),
              Divider(
                color: Colors.black,
              ),
              SizedBox(
                height: 20.0,
              ),
              wildanimals(),
              Divider(
                color: Colors.black,
              ),
              SizedBox(
                height: 20.0,
              ),
              Day(),
              Divider(
                color: Colors.black,
              ),
              SizedBox(
                height: 20.0,
              ),
              Birds(),
              Divider(
                color: Colors.black,
              ),
              SizedBox(
                height: 20.0,
              ),
              Vegetable(),
              Divider(
                color: Colors.black,
              ),
              // SizedBox(
              //   height: 20.0,
              // ),
              // // Insects(),
              // Divider(
              //   color: Colors.black,
              // ),
              SizedBox(
                height: 20.0,
              ),
              Body(),
              Divider(
                color: Colors.black,
              ),
              SizedBox(
                height: 20.0,
              ),
              Random(),
              Divider(
                color: Colors.black,
              ),
              SizedBox(
                height: 20.0,
              ),
              Family(),
              Divider(
                color: Colors.black,
              ),
              // SizedBox(
              //   height: 20.0,
              // ),
              // Household(),
            ],
          ),
        ),
      ),
    );
  }
}

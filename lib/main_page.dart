// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:bmi_calculator/constants.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Center(
          child: Text(
            "BMI Calculator",
            style: TextStyle(
                fontSize: 22, fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ),
      ),
      body: Container(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                Row(
                  //height weight row
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 25.0),
                      child: Column(
                        //Height
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 10.0),
                            child: Text(
                              "Height(cm)",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 10, bottom: 10, right: 10),
                            child: Text(height.toString(),
                                style: TextStyle(
                                    fontSize: 50,
                                    fontWeight: FontWeight.bold,
                                    color: kNumberColor1)),
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(right: 15.0),
                                child: FloatingActionButton(
                                  onPressed: onHeightMinus,
                                  child: Icon(
                                    Icons.remove,
                                    color: Colors.white,
                                  ),
                                  backgroundColor: Colors.red,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 5.0),
                                child: FloatingActionButton(
                                  onPressed: onHeightPlus,
                                  child: Icon(
                                    Icons.add,
                                    color: Colors.white,
                                  ),
                                  backgroundColor: Colors.blue,
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 45.0),
                      child: Column(
                        //Height
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 10.0),
                            child: Text(
                              "Mass(Kg)",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 10, bottom: 10, right: 10),
                            child: Text(
                              mass.toString(),
                              style: TextStyle(
                                  fontSize: 50,
                                  fontWeight: FontWeight.bold,
                                  color: kNumberColor1),
                            ),
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(right: 15.0),
                                child: FloatingActionButton(
                                  onPressed: onMassMinus,
                                  child: Icon(
                                    Icons.remove,
                                    color: Colors.white,
                                  ),
                                  backgroundColor: Colors.red,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 5.0),
                                child: FloatingActionButton(
                                  onPressed: onMassPlus,
                                  child: Icon(
                                    Icons.add,
                                    color: Colors.white,
                                  ),
                                  backgroundColor: Colors.blue,
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                Row(
                  //BMI value row
                  children: [
                    Center(
                      child: Padding(
                        padding: EdgeInsets.only(left: 45.0, top: 50),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(bottom: 5.0),
                              child: Text(
                                "BMI Value",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                            ),
                            Text(
                              bmi.toStringAsFixed(1),
                              style: TextStyle(
                                  fontSize: 50,
                                  fontWeight: FontWeight.bold,
                                  color: kNumberColor1),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 30.0),
                              child: Text(
                                comment,
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: commentColor),
                              ),
                            ),
                            Row(
                              children: [
                                //reset
                                SizedBox(
                                  width: 120,
                                  child: FloatingActionButton(
                                    onPressed: reset,
                                    backgroundColor: Colors.blue,
                                    child: Text(
                                      "Reset",
                                      style: TextStyle(
                                          fontSize: 20,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 50,
                                ),
                                SizedBox(
                                  width: 120,
                                  child: FloatingActionButton(
                                    onPressed: cal,
                                    backgroundColor: Colors.blue,
                                    child: Text(
                                      "Calculate",
                                      style: TextStyle(
                                          fontSize: 20,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          )),
    );
  }

  double height = 176;
  double mass = 65;
  double bmi = 0;
  String comment = "";
  Color commentColor = Colors.white;

  void onHeightMinus() {
    print("H minus");
    setState(() {
      if (1 < height) {
        height--;
      }
    });
  }

  void onHeightPlus() {
    print("H plus");
    setState(() {
      if (height < 250) {
        height++;
      }
    });
  }

  void onMassMinus() {
    print("M minus");
    setState(() {
      if (1 < mass) {
        mass--;
      }
    });
  }

  void onMassPlus() {
    print("M plus");
    setState(() {
      if (mass < 200) {
        mass++;
      }
    });
  }

  void reset() {
    print("reset");
    setState(() {
      height = 176;
      mass = 65;
      bmi = 21;
      commentColor = Colors.white;
    });
  }

  void cal() {
    print("calculating");
    setState(() {
      double heightInM = height / 100;
      bmi = mass / (heightInM * heightInM);

      if (bmi < 18.5) {
        commentColor = const Color.fromARGB(255, 197, 180, 30);
        comment = "Under Weight";
      } else if (bmi < 24.9) {
        commentColor = kNormalWeight;
        comment = "Normal Weight";
      } else if (bmi < 29.9) {
        commentColor = kOverWeight;
        comment = "Over Weight";
      } else {
        commentColor = kObeseWeight;
        comment = "Obese";
      }
    });
  }
}

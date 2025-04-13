// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

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
                Padding(
                  padding: const EdgeInsets.only(bottom: 40.0),
                  child: Row(
                    //male female row
                    children: const [
                      Padding(
                        padding: EdgeInsets.only(
                          left: 35.0,
                        ),
                        child: Column(
                          //male
                          children: [
                            Icon(
                              Icons.male,
                              size: 100,
                            ),
                            Text(
                              "Male",
                              style: TextStyle(fontSize: 20),
                            )
                          ],
                        ),
                      ),
                      Spacer(),
                      Padding(
                        padding: EdgeInsets.only(right: 35.0),
                        child: Column(
                          //female
                          children: [
                            Icon(
                              Icons.female,
                              size: 100,
                            ),
                            Text(
                              "Female",
                              style: TextStyle(fontSize: 20),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Row(
                  //height weight row
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 40.0),
                      child: Column(
                        //Height
                        children: [
                          Text("Height",style: TextStyle(fontSize: 20, ),),
                          
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("176", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.remove,
                                size: 40,
                              ),
                              Icon(
                                Icons.add,
                                size: 40,
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    Column(
                        //weight
                        )
                  ],
                ),
                Row(
                  //BMI value row
                  children: [
                    Column(
                        //BMI TEXT

                        //Result value
                        )
                  ],
                )
              ],
            ),
          )),
    );
  }
}

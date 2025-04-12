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
    return Container(
        color: Colors.white,
        child: Column(
          children: [
            Row(
              //male female row
              children: [
                Column(
                  //male
                  children: [Text(" Micon"), Text("male")],
                ),
                Column(
                  //female
                  children: [Text("ficon"), Text("female")],
                )
              ],
            ),
            Row(
              //height weight row
              children: [
                Column(
                    //Height

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
        ));
  }
}

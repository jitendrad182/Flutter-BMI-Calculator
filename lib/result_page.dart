import 'package:bmi/bottom_container.dart';

import 'const.dart';
import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  final String resultString;
  final double result;
  final String resultDescription;
  ResultPage({this.result, this.resultDescription, this.resultString});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI CALCULATOR"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              alignment: Alignment.bottomLeft,
              child: Center(
                child: Text(
                  'Your Result',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 50.0),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: Container(
              margin: EdgeInsets.all(15.0),
              decoration: BoxDecoration(
                color: kActiveCardColor,
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    resultString.toUpperCase(),
                    style: TextStyle(
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF24D876),
                    ),
                  ),
                  Text(
                    result.toStringAsFixed(1),
                    style:
                        TextStyle(fontSize: 100.0, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    resultDescription,
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 20.0),
                  )
                ],
              ),
            ),
          ),
          BottomContainer(
            onTap: () {
              Navigator.pop(context);
            },
            bottomContainerText: "RE - CALCULATE",
          )
        ],
      ),
    );
  }
}

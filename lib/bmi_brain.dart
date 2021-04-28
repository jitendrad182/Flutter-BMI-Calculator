import 'dart:math';

import 'package:flutter/material.dart';

class BmiBrain {
  int height;
  int weight;
  double _bmi;

  BmiBrain({this.height, this.weight});

  double bmiResult() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi;
  }

  String bmiResultString() {
    if (_bmi >= 25) {
      return "Overweight";
    } else if (_bmi > 18 && _bmi < 25) {
      return "Normal";
    } else {
      return "Underweight";
    }
  }

  String bmiResultDescription() {
    if (_bmi >= 25) {
      return "You have a higher than normal body weight. Try to exercise more. ";
    } else if (_bmi > 18 && _bmi < 25) {
      return "You have a normal body weight. Good job!";
    } else {
      return "You have a lower than normal body weight. You can eat a bit more. ";
    }
  }
}

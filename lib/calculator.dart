import 'package:flutter/cupertino.dart';
import 'dart:math';

class Calculator {
  final int height;
  final int weight;
  double _bmi;

  Calculator({@required this.height, @required this.weight});

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String bmiCategory() {
    if (_bmi > 25) {
      return 'Overweight';
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String bmiInterpretation() {
    if (_bmi > 25) {
      return 'You are overweight, you should exercise more';
    } else if (_bmi > 18.5) {
      return 'Your weight is normal. Good job!';
    } else {
      return 'You are underweight. You should eat more';
    }
  }
}

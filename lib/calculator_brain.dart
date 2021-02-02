import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({this.height, this.weight});
  final int height;
  final int weight;

  double _bmi;

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi <= 18.5) {
      return "Underweight";
    } else if (_bmi <= 25.0) {
      return "Normal Weight";
    } else if (_bmi <= 30.0) {
      return "Overweight";
    } else {
      return "Obese";
    }
  }

  String getInterpretaion() {
    if (_bmi <= 18.5) {
      return "Eat more than usually  ";
    } else if (_bmi <= 25.0) {
      return "Perfect as you are";
    } else if (_bmi <= 30.0) {
      return "Try exercise more";
    } else {
      return "If you don't exercise in 5 years , you might die cause of diabetes";
    }
  }
}

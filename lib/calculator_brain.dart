import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({required this.height, required this.weight});

  final int height;
  final int weight;
  
  late double _bmi; 

  String calculateBMI() {
     _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1); 
  }

  String getResult(){
    if(_bmi >= 25) {
      return "Overweight";
    } else if (_bmi > 18.5) {
      return "Normal";
    }else {
      return "Underweight";
    }
  }

  String getInterpretation() {
     if(_bmi >= 25) {
      return "You Have A Higher Than Normal Body Weight. Try To Exercise More";
    } else if (_bmi > 18.5) {
      return "You Have A Normal Body Weight. Good Job!";
    }else {
      return "You Have A lower Than Normal Body Weight. You Can Eat A Bit More ";
    }
  }
  }


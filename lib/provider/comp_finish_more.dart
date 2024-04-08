import 'dart:math';
import 'package:flutter/material.dart';

class ComputerFinishMoreNumberProvider extends ChangeNotifier {
  
  late int _controllerOne;//_number1;
  late int _controllerTwo;//_number2;
  late int _randomNumber;
  late int _randomNumberMore;
  
  int get number1 => _controllerOne;//_number1;
  int get number2 => _controllerTwo;//_number2;
  int get randomNumber => _randomNumber;
  int get randomNumberMore => _randomNumberMore; 
  //БОЛЬШЕ
  void setNumbers2(int number2, int randomNumber) {
    
    _controllerTwo = number2;
    _randomNumber = randomNumber;
    generateRandomHumanAndComputerMoreNumber();
    notifyListeners();
  }
  void generateRandomHumanAndComputerMoreNumber() {
     _randomNumberMore = Random().nextInt((100) + 1);
    // _randomNumberMore = Random().nextInt((_controllerTwo - _randomNumber) + _randomNumber);
  }
  
}



//_randomNumberMore = random.nextInt(_controllerTwo - _randomNumber) + _randomNumber; // рабоче выражение
  
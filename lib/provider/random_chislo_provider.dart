import 'dart:math';
import 'package:flutter/material.dart';

class RandomNumberProvider extends ChangeNotifier {
  
  late int _controllerOne;//_number1;
  late int _controllerTwo;//_number2;
  late int _controllerHumanChislo;//_number3
  late int _randomNumber;
  late int _randomNumberLess;
  late int _randomNumberMore;

  int get number1 => _controllerOne;//_number1;
  int get number2 => _controllerTwo;//_number2;
  int get number3 => _controllerHumanChislo;
  int get randomNumber => _randomNumber;
  int get randomNumberLess => _randomNumberLess;
  int get randomNumberMore => _randomNumberMore;

  // РАНДОМ ДИАПОЗОНА
  void setNumbers(int num1, int num2) {
    
    _controllerOne = num1;
    _controllerTwo = num2;
    generateRandomNumber(randomNumber: '');
    notifyListeners();
  }

  void generateRandomNumber({required String randomNumber}) {
    Random random = Random();
    //_randomNumber = random.nextInt((_controllerOne + _controllerTwo) + 1); не понял вообще почему в один момент
    //эта функция начала глючить - потратил какое  огромное количество время что бы проверить в чем
    //было дело. отключал страницы,  отключал ввод и вывод. фикс оказался в другой формуле.
    // рабочая в диапозоне _randomNumber = random.nextInt(_controllerTwo - _controllerOne) + _controllerOne;
    _randomNumber = random.nextInt(_controllerTwo - _controllerOne) + _controllerOne; // рабоче выражение
  }
  
  // //БОЛЬШЕ
  // void setNumbers2(int num2, int num3) {
    
  //   _controllerTwo = num2;
  //   _randomNumber = randomNumber;
  //   _generateRandomHumanAndComputerMoreNumber();
  //   notifyListeners();
  // }

  // void _generateRandomHumanAndComputerMoreNumber() {
  //   Random random = Random();
  //   _randomNumberMore = random.nextInt(_controllerTwo - randomNumber) + randomNumber;
  //   //_randomNumberMore = random.nextInt(_controllerTwo - _randomNumber) + _randomNumber; // рабоче выражение
  // }

  // МЕНЬШЕ
  // void setNumbers3(int num1, int randomNumber) {
    
  //   _controllerOne = num1;
  //   _randomNumber = randomNumber;
  //   _generateRandomHumanAndComputerLessNumber();
  //   notifyListeners();
  // }

  // void _generateRandomHumanAndComputerLessNumber() {
  //   Random random = Random();
  //   _randomNumberLess = random.nextInt(_randomNumber - _controllerOne) + _controllerOne; // рабоче выражение
  // }
  
}


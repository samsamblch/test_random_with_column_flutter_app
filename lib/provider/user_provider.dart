import 'package:flutter/material.dart';


class UserProvider extends ChangeNotifier {
  
  String minChislo;
  String maxChislo;
  String humanChislo;

  UserProvider({
    
    this.minChislo = '0',
    this.maxChislo = '0',
    this.humanChislo = '0',
    
  });

  void novoeHumanChislo({
    required String newHumanChislo, 
  }) async {
    humanChislo = newHumanChislo;
    notifyListeners();
  }
  void novoeMinChislo({
    required String newMinChislo,
  }) async {
    minChislo = newMinChislo;
    notifyListeners();
   
  }
  void novoeMaxChislo({
    required String newMaxChislo,
  }) async {
    maxChislo = newMaxChislo;
    notifyListeners();
  }
  
}

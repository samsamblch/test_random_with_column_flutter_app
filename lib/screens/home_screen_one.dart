//import 'dart:math';

import 'package:provider/provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:test_random_with_column_flutter_apl/provider/random_chislo_provider.dart';
import 'package:test_random_with_column_flutter_apl/provider/user_provider.dart';
import 'package:test_random_with_column_flutter_apl/screens/ComputerScreens/computer_start_game_screen.dart';
import 'package:test_random_with_column_flutter_apl/screens/HumanScreens/human_start_game_one.dart';

class HomeScreenOne extends StatefulWidget {
  const HomeScreenOne({super.key});

  @override
  State<HomeScreenOne> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<HomeScreenOne> {
  final TextEditingController _controllerOne = TextEditingController();
  final TextEditingController _controllerTwo = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            // отступ (1 строка)
            const SizedBox(height: 170),
            //заголовок (2 строка)
            const Align(
              alignment: Alignment.center,
              child: Text(
                'КТО  ОТГАДЫВАЕТ? * ',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 100),
            // кнопка ЧЕЛОВЕК
            SizedBox(
              height: 60,
              width: 220,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    shape: const RoundedRectangleBorder(),
                    backgroundColor: Colors.grey,
                    shadowColor: Colors.grey),
                onPressed: () {
                  int number1 = int.tryParse(_controllerOne.text) ?? 0;
                  int number2 = int.tryParse(_controllerTwo.text) ?? 0;

                  Provider.of<RandomNumberProvider>(context, listen: false)
                      .setNumbers(number1, number2);

                  context
                      .read<UserProvider>()
                      .novoeMinChislo(newMinChislo: _controllerOne.text);
                  context
                      .read<UserProvider>()
                      .novoeMaxChislo(newMaxChislo: _controllerTwo.text);

                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              const HumanStartGameScreenOne()));
                },
                child: const Text(
                  'ЧЕЛОВЕК',
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.normal,
                    color: Color.fromARGB(255, 34, 34, 34),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 30),
            SizedBox(
              height: 60,
              width: 220,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    shape: const RoundedRectangleBorder(),
                    //padding: const EdgeInsets.symmetric(horizontal: 210, vertical: 50),
                    backgroundColor: Colors.grey,
                    shadowColor: Colors.grey),
                onPressed: () {
                  int number1 = int.tryParse(_controllerOne.text) ?? 0;
                  int number2 = int.tryParse(_controllerTwo.text) ?? 0;

                  Provider.of<RandomNumberProvider>(context, listen: false)
                      .setNumbers(number1, number2);

                  context
                      .read<UserProvider>()
                      .novoeMinChislo(newMinChislo: _controllerOne.text);
                  context
                      .read<UserProvider>()
                      .novoeMaxChislo(newMaxChislo: _controllerTwo.text);
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              const ComputerStartGameScreenOne()));
                },
                child: const Text(
                  'КОМПЬЮТЕР',
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.normal,
                    color: Color.fromARGB(255, 34, 34, 34),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 170),

            // Текст ДИАПОЗОН ЧИСЕЛ

            const Align(
              alignment: Alignment.center,
              child: Text(
                'Диапозон чисел',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            const SizedBox(height: 20),

            Row(
              ///головой понимаю что тут должна быть строка и два колума
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Flexible(
                  child: TextField(
                      textAlign: TextAlign.center,
                      controller: _controllerOne,
                      keyboardType: TextInputType.number,
                      inputFormatters: [LengthLimitingTextInputFormatter(2)],
                      decoration: const InputDecoration(
                          hintText: 'мин. число',
                          contentPadding: EdgeInsets.all(10))),
                ),
                const SizedBox(
                  width: 20.0,
                ),
                Flexible(
                  child: TextField(
                      controller: _controllerTwo,
                      textAlign: TextAlign.center,
                      keyboardType: TextInputType.number,
                      inputFormatters: [LengthLimitingTextInputFormatter(2)],
                      decoration: const InputDecoration(
                          hintText: 'макс. число',
                          contentPadding: EdgeInsets.all(10))),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

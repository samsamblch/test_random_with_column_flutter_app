import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test_random_with_column_flutter_apl/provider/random_chislo_provider.dart';
import 'package:test_random_with_column_flutter_apl/provider/user_provider.dart';
import 'package:test_random_with_column_flutter_apl/screens/HumanScreens/human_wait_move.dart';

class HumanStartGameScreenOne extends StatefulWidget {
  const HumanStartGameScreenOne({super.key});
  @override
  State<HumanStartGameScreenOne> createState() => _HumanStartGameScreenState();
}

class _HumanStartGameScreenState extends State<HumanStartGameScreenOne> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        children: [
          // отступ (1 строка)
          const SizedBox(height: 200),
          Text(
            'human_start_game_one             ${context.watch<RandomNumberProvider>().randomNumber}',
            style: const TextStyle(color: Colors.black),
          ),

          // заголовок (2 строка)
          Align(
            alignment: Alignment.center,
            child: Text(
              '       Я загадал число \nв диапозоне от ${context.watch<UserProvider>().minChislo} до ${context.watch<UserProvider>().maxChislo}*',
              style: const TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          const SizedBox(height: 130),
          // кнопка Начать игру
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
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => HumanWaitMoveScreen()));
              },
              child: const Text(
                'НАЧАТЬ ИГРУ',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.normal,
                  color: Color.fromARGB(255, 34, 34, 34),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

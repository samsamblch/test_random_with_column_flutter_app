import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test_random_with_column_flutter_apl/provider/comp_finish_more.dart';
//import 'package:test_random_with_column_flutter_apl/provider/random_chislo_provider.dart';
import 'package:test_random_with_column_flutter_apl/screens/ComputerScreens/computer_start_game_screen.dart';
//import 'package:test_random_with_column_flutter_apl/provider/user_provider.dart';
//import 'package:test_random_with_column_flutter_apl/screens/HumanScreens/human_wait_move.dart';

class ComputerFinishMoreScreen extends StatefulWidget {
  const ComputerFinishMoreScreen({super.key});
  @override
  State<ComputerFinishMoreScreen> createState() =>
      _ComputerFinishMoreScreenState();
}

class _ComputerFinishMoreScreenState extends State<ComputerFinishMoreScreen> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        children: [
          // отступ (1 строка)
          const SizedBox(height: 200),

          // заголовок (2 строка)
          Align(
            alignment: Alignment.center,
            child: Text(
              '    Ваше число ${context.watch<ComputerFinishMoreNumberProvider>().randomNumberMore}!',
              style: const TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          const SizedBox(height: 150),
          // кнопка да
          SizedBox(
            height: 60,
            width: 220,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  shape: const RoundedRectangleBorder(),
                  backgroundColor: Colors.grey,
                  shadowColor: Colors.grey),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            const ComputerStartGameScreenOne()));
              },
              child: const Text(
                ' НАЧАТЬ ИГРУ \n     ЗАНОВО?',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.normal,
                  color: Color.fromARGB(255, 34, 34, 34),
                ),
              ),
            ),
          ),
          const SizedBox(height: 70),
        ],
      ),
    );
  }
}

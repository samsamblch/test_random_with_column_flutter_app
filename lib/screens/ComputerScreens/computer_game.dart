import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test_random_with_column_flutter_apl/provider/comp_finish_more.dart';
import 'package:test_random_with_column_flutter_apl/provider/random_chislo_provider.dart';
import 'package:test_random_with_column_flutter_apl/provider/user_provider.dart';
//import 'package:test_random_with_column_flutter_apl/provider/user_provider.dart';
import 'package:test_random_with_column_flutter_apl/screens/ComputerScreens/computer_finish_more.dart';
//import 'package:test_random_with_column_flutter_apl/screens/HumanScreens/human_wait_move.dart';

class ComputerGameScreenOne extends StatefulWidget {
  const ComputerGameScreenOne({super.key});
  @override
  State<ComputerGameScreenOne> createState() => _ComputerGameScreenState();
}

class _ComputerGameScreenState extends State<ComputerGameScreenOne> {
  final TextEditingController _controllerTwo = TextEditingController();

  final TextEditingController _randomNumber = TextEditingController();

  late String randomNumber;

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
              '    Число больше ${context.watch<RandomNumberProvider>().randomNumber}?',
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
                int number3 = int.tryParse(_randomNumber.text) ?? 0;
                int number2 = int.tryParse(_controllerTwo.text) ?? 0;

                Provider.of<ComputerFinishMoreNumberProvider>(context,
                        listen: false)
                    .setNumbers2(number3, number2);

                context
                    .read<RandomNumberProvider>()
                    .generateRandomNumber(randomNumber: _randomNumber.text);
                context
                    .read<UserProvider>()
                    .novoeMaxChislo(newMaxChislo: _controllerTwo.text);

                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            const ComputerFinishMoreScreen()));
              },
              child: const Text(
                'ДА',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.normal,
                  color: Color.fromARGB(255, 34, 34, 34),
                ),
              ),
            ),
          ),
          const SizedBox(height: 70),

          // кнопка нет
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
                        builder: (context) =>
                            const ComputerFinishMoreScreen()));
              },
              child: const Text(
                'НЕТ',
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

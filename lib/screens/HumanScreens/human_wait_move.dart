import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:test_random_with_column_flutter_apl/provider/random_chislo_provider.dart';
import 'package:test_random_with_column_flutter_apl/provider/user_provider.dart';
import 'package:test_random_with_column_flutter_apl/screens/HumanScreens/human_game_second_chance.dart';

// ignore: must_be_immutable
class HumanWaitMoveScreen extends StatefulWidget {
  HumanWaitMoveScreen({super.key});
  late String randomNumber;
  @override
  State<HumanWaitMoveScreen> createState() => _HumanWaitMoveScreenState();
}

class _HumanWaitMoveScreenState extends State<HumanWaitMoveScreen> {
  final TextEditingController _controllerHumanChislo = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Material(
        child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(children: [
        // отступ (1 строка)
        const SizedBox(height: 200),
        Text(
          'human_wait_move_one             ${context.watch<RandomNumberProvider>().randomNumber}',
          style: const TextStyle(color: Colors.black),
        ),
        const Align(
          alignment: Alignment.center,
          child: Text(
            'Жду вашего хода',
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),

        const SizedBox(height: 30),

        SizedBox(
          height: 90,
          width: 250,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextField(
                  controller: _controllerHumanChislo,
                  keyboardType: TextInputType.number,
                  inputFormatters: [LengthLimitingTextInputFormatter(2)],
                  textAlign: TextAlign.center,
                  decoration: const InputDecoration(
                      hintText: 'Число',
                      hintStyle: TextStyle(
                          fontSize: 40, fontWeight: FontWeight.normal),
                      contentPadding: EdgeInsets.all(10)),
                )
              ],
            ),
          ),
        ),

        const SizedBox(height: 100),
        // кнопка Меньше
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
              height: 45,
              width: 120,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    shape: const RoundedRectangleBorder(),
                    //padding: const EdgeInsets.symmetric(horizontal: 210, vertical: 50),
                    backgroundColor: Colors.grey,
                    shadowColor: Colors.grey),
                onPressed: () {},
                child: const Text(
                  'МЕНЬШЕ',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.normal,
                    color: Color.fromARGB(255, 34, 34, 34),
                  ),
                ),
              ),
            ),
            // равно
            SizedBox(
              height: 45,
              width: 120,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    shape: const RoundedRectangleBorder(),
                    //padding: const EdgeInsets.symmetric(horizontal: 210, vertical: 50),
                    backgroundColor: Colors.grey,
                    shadowColor: Colors.grey),
                onPressed: () {
                  context.read<UserProvider>().novoeHumanChislo(
                      newHumanChislo: _controllerHumanChislo.text);
                  // int number1 = int.tryParse(_controllerOne.text) ?? 0;
                  // int number2 = int.tryParse(_controllerTwo.text) ?? 0;

                  // Provider.of<RandomNumberProvider>(context, listen: false)
                  //     .setNumbers(number1, number2);

                  // context
                  //     .read<UserProvider>()
                  //     .novoeMinChislo(newMinChislo: _controllerOne.text);
                  // context
                  //     .read<UserProvider>()
                  //     .novoeMaxChislo(newMaxChislo: _controllerTwo.text);
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              const HumanSecondChanceGameScreen()));
                },
                child: const Text(
                  'РАВНО',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.normal,
                    color: Color.fromARGB(255, 34, 34, 34),
                  ),
                ),
              ),
            ),
            // кнопка больше
            SizedBox(
              height: 45,
              width: 120,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    shape: const RoundedRectangleBorder(),
                    //padding: const EdgeInsets.symmetric(horizontal: 210, vertical: 50),
                    backgroundColor: Colors.grey,
                    shadowColor: Colors.grey),
                onPressed: () {},
                child: const Text(
                  'БОЛЬШЕ',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.normal,
                    color: Color.fromARGB(255, 34, 34, 34),
                  ),
                ),
              ),
            ),
          ],
        )
      ]),
    ));
  }
}

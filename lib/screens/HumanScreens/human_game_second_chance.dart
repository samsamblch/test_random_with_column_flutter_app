import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
//import 'package:provider/provider.dart';
//import 'package:test_random_with_column_flutter_apl/provider/random_chislo_provider.dart';
//import 'package:test_random_with_column_flutter_apl/provider/user_provider.dart';

class HumanSecondChanceGameScreen extends StatefulWidget {
  const HumanSecondChanceGameScreen({super.key});

  @override
  State<HumanSecondChanceGameScreen> createState() =>
      _HumanWaitMoveScreenState();
}

class _HumanWaitMoveScreenState extends State<HumanSecondChanceGameScreen> {
  final TextEditingController _controllerHumanChislo = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // int number1 = int.tryParse(_controllerHumanChislo.text) ?? 0;
    // //int number2 = int.tryParse(_randomNumber.text) ?? 0;

    return Material(
        child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(children: [
        // отступ (1 строка)
        const SizedBox(height: 200),
        //       Text(
        //   'human_second_chanse_game             ${
        //       context.watch<RandomNumberProvider>().randomNumber}  мое число  ${
        //       context.watch<UserProvider>().humanChislo} ',
        //   style: TextStyle(color: Colors.black),
        // ),
        const Align(
          alignment: Alignment.center,
          child: Text(
            'Мой ответ:\n      Нет',
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

        // строка ввода ответа

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
                onPressed: () {
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
                  // Navigator.push(
                  //     context,
                  //     MaterialPageRoute(
                  //         builder: (context) => HumanStartGameScreenOne()));
                },
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
                  // context
                  //     .read<UserProvider>()
                  //     .novoeHumanChislo(newHumanChislo: _controllerHumanChislo.text, humanChislo: '');
                  // // int number1 = int.tryParse(_controllerOne.text) ?? 0;
                  // int number2 = int.tryParse(_controllerTwo.text) ?? 0;

                  // Provider.of<RandomNumberProvider>(context, listen: false)
                  //     .setNumbers(number1, number2);

                  // context
                  //     .read<UserProvider>()
                  //     .novoeMinChislo(newMinChislo: _controllerOne.text);
                  // context
                  //     .read<UserProvider>()
                  //     .novoeMaxChislo(newMaxChislo: _controllerTwo.text);
                  // Navigator.push(
                  //     context,
                  //     MaterialPageRoute(
                  //         builder: (context) => HumanStartGameScreenOne()));
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
                onPressed: () {
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
                  // Navigator.push(
                  //     context,
                  //     MaterialPageRoute(
                  //         builder: (context) => HumanStartGameScreenOne()));
                },
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

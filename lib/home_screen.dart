// import 'dart:math';
// import 'package:provider/provider.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// // import 'package:test_random_with_column_flutter_apl/main.dart';
// import 'package:test_random_with_column_flutter_apl/screens/ComputerScreens/computer_start_game_screen.dart';
// import 'package:test_random_with_column_flutter_apl/screens/HumanScreens/human_start_game.dart';

// class HomeScreen extends StatefulWidget {
//   const HomeScreen({super.key});

  

//   @override
//   State<HomeScreen> createState() => _MyWidgetState();
// }

// class _MyWidgetState extends State<HomeScreen> {
//   final TextEditingController _controllerOne = TextEditingController();
//   final TextEditingController _controllerTwo = TextEditingController();
//   String _result = '';


  

//   int generateRandomNumber(int min, int max) {
//     final Random _random = new Random();
//     return min + _random.nextInt(max - min);
    
//   }

//   void generateRandomNumberFromInput() {
//     int num1 = int.tryParse(_controllerOne.text) ?? 0;
//     int num2 = int.tryParse(_controllerTwo.text) ?? 0;

//     // ignore: unnecessary_null_comparison
//     if (num1 != null && num2 != null) {
//       int min = num1 < num2 ? num1 : num2;
//       int max = num1 > num2 ? num1 : num2;

//       setState(() {
//         _result = generateRandomNumber(min, max).toString();
//       });
//       Navigator.push(
//         context,
//         MaterialPageRoute(
//           builder: (context) => HumanStartGameScreen(
//             result: _result,
//             minimum: _controllerOne.text,
//             maximum: _controllerTwo.text,
//           ),
//         ),
//       );
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Material(
//       child: Padding(
//         padding: const EdgeInsets.all(10.0),
//         child: Column(
//           children: [
//             // отступ (1 строка)
//             SizedBox(height: 170),
//             SizedBox(height: 20),
//             //Text(
//               //),
//               //style: TextStyle(fontSize: 20, color: Colors.black)),

//             //заголовок (2 строка)
//             Align(
//               alignment: Alignment.center,
//               child: Text(
//                 'КТО  ОТГАДЫВАЕТ?',
//                 style: TextStyle(
//                   fontSize: 25,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//             ),
//             SizedBox(height: 100),
//             // кнопка ЧЕЛОВЕК
//             SizedBox(
//               height: 60,
//               width: 220,
//               child: ElevatedButton(
                
//                 style: ElevatedButton.styleFrom(
//                     shape: RoundedRectangleBorder(),
//                     //padding: const EdgeInsets.symmetric(horizontal: 210, vertical: 50),
//                     backgroundColor: Colors.grey,
//                     shadowColor: Colors.grey),
//                 onPressed: generateRandomNumberFromInput,
                
//                 child: Text(
//                   'ЧЕЛОВЕК',
//                   style: TextStyle(
//                     fontSize: 28,
//                     fontWeight: FontWeight.normal,
//                     color: Color.fromARGB(255, 34, 34, 34),
//                   ),
//                 ),
                
//               ),
//             ),
//             SizedBox(height: 40),
//             // кнопка КОМПЬЮТЕР
//             Column(
//               children: [
//                 Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceAround,
//                     children: [
//                       Material(
//                         color: Colors.grey,
//                         borderRadius: BorderRadius.zero,
//                         child: InkWell(
//                           onTap: () {
//                             Navigator.of(context).push(MaterialPageRoute(
//                               builder: (context) => ComputerStartGameScreenOne(),
//                             ));
//                           },
//                           //  габариты кнопки
//                           child: Padding(
//                             padding: EdgeInsets.symmetric(
//                                 vertical: 15, horizontal: 50),
//                             child: Text(
//                               'КОМПЬЮТЕР',
//                               style: TextStyle(
//                                 color: Colors.black,
//                                 fontSize: 20,
//                                 //fontWeight: FontWeight.bold,
//                               ),
//                             ),
//                           ),
//                         ),
//                       ),
//                     ]),
//               ],
//             ),
//             SizedBox(height: 170),

//             // Текст ДИАПОЗОН ЧИСЕЛ

//             Align(
//               alignment: Alignment.center,
//               child: Text(
//                 'Диапозон чисел',
//                 style: TextStyle(
//                   fontSize: 20,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//             ),

//             SizedBox(height: 20),

//             Row(
//               ///головой понимаю что тут должна быть строка и два колума
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: <Widget>[
//                 Flexible(
//                   child: TextField(
//                       textAlign: TextAlign.center,
//                       controller: _controllerOne,
//                       keyboardType: TextInputType.number,
//                       inputFormatters: [LengthLimitingTextInputFormatter(2)],
//                       decoration: InputDecoration(
//                           hintText: 'мин. число',
//                           contentPadding: EdgeInsets.all(10))),
//                 ),
//                 SizedBox(
//                   width: 20.0,
//                 ),
//                 Flexible(
//                   child: TextField(
//                       controller: _controllerTwo,
//                       textAlign: TextAlign.center,
//                       keyboardType: TextInputType.number,
//                       inputFormatters: [LengthLimitingTextInputFormatter(2)],
//                       decoration: InputDecoration(
//                           hintText: 'макс. число',
//                           contentPadding: EdgeInsets.all(10))),
//                 ),
//               ],
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }

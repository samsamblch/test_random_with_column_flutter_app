



// import 'package:flutter/material.dart';
// import 'package:test_random_with_column_flutter_apl/screens/HumanScreens/human_wait_move.dart';

// class HumanStartGameScreen extends StatefulWidget {
//   final String result;
//   final String minimum;
//   final String maximum;

//   const HumanStartGameScreen({
//     super.key,
//     required this.minimum,
//     required this.maximum,
//     required this.result,
//   });

//   @override
//   State<HumanStartGameScreen> createState() => _HumanStartGameScreenState();
// }

// class _HumanStartGameScreenState extends State<HumanStartGameScreen> {
//   // final TextEditingController _controllerOne = TextEditingController();
//   // final TextEditingController _controllerTwo = TextEditingController();
//   // String _result = '';

//   // void humanWaitMoveButton() {
//   //   setState(() {
//   //      Navigator.push(
//   //       context,
//   //       MaterialPageRoute(
//   //         builder: (context) => HumanWaitMoveScreen(
//   //           result: _result,

//   //         )));
//   //   });
//   // }

//   //   int generateRandomNumber(int min, int max) {
//   //     final Random _random = new Random();
//   //     return min + _random.nextInt(max - min);
//   //   }

//   //   void generateRandomNumberFromInput() {
//   //     int num1 = int.tryParse(_controllerOne.text) ?? 0;
//   //     int num2 = int.tryParse(_controllerTwo.text) ?? 0;

//   //     setState(() {
//   //       _result = generateRandomNumber(min as int, max as int).toString();
//   //     });
//   //     Navigator.push(
//   //       context,
//   //       MaterialPageRoute(
//   //         builder: (context) => HumanWaitMoveScreen(
//   //         //  result: _result,
//   //          // minimum: _controllerOne.text,
//   //          // maximum: _controllerTwo.text,
//   //         ),
//   //       ),
//   //     );
//   //   }
//   // }

//   @override
//   Widget build(BuildContext context) {
//     return Material(
//       child: Column(
//         children: [
//           // отступ (1 строка)
//           SizedBox(height: 200),
//           Text(
//             '${widget.result} ',
//             style: TextStyle(color: Colors.black),
//           ),

//           // заголовок (2 строка)
//           Align(
//             alignment: Alignment.center,
//             child: Text(
//               '       Я загадал число \nв диапозоне от ${widget.minimum} до ${widget.maximum}',
//               style: TextStyle(
//                 color: Colors.black,
//                 fontSize: 20,
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//           ),

//           SizedBox(height: 130),
//           // кнопка Начать игру
//           SizedBox(
//             height: 60,
//             width: 220,
//             child: ElevatedButton(
//               style: ElevatedButton.styleFrom(
//                   shape: RoundedRectangleBorder(),
//                   //padding: const EdgeInsets.symmetric(horizontal: 210, vertical: 50),
//                   backgroundColor: Colors.grey,
//                   shadowColor: Colors.grey),
//               onPressed: (){

//               },
//               child: Text(
//                 'НАЧАТЬ ИГРУ',
//                 style: TextStyle(
//                   fontSize: 24,
//                   fontWeight: FontWeight.normal,
//                   color: Color.fromARGB(255, 34, 34, 34),
//                 ),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

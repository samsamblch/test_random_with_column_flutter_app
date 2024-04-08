import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test_random_with_column_flutter_apl/provider/comp_finish_more.dart';
import 'package:test_random_with_column_flutter_apl/provider/random_chislo_provider.dart';
import 'package:test_random_with_column_flutter_apl/provider/user_provider.dart';
import 'package:test_random_with_column_flutter_apl/splash_screen.dart';
//тестовая запись
//вторая тестовая запись
void main() {
  runApp( const RandomNumbersApp());
}

class RandomNumbersApp extends StatefulWidget {
  const RandomNumbersApp({super.key});

  @override
  State<RandomNumbersApp> createState() => _RandomNumbersAppState();
}

class _RandomNumbersAppState extends State<RandomNumbersApp> {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => UserProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => RandomNumberProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => ComputerFinishMoreNumberProvider(),
        ),
      ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SplashScreen(),
      ),
    );
  }
}

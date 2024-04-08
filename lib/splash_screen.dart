import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
//import 'package:test_random_with_column_flutter_apl/home_screen.dart';
import 'package:test_random_with_column_flutter_apl/screens/home_screen_one.dart';
// import 'package:test_random_with_column_flutter_apl/splash_screen.dart';
// import 'package:test_random_with_column_flutter_apl/main.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);

    Future.delayed(const Duration(seconds: 4), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
// ////////////// // ////////////// // ////////////// // ////////////// // //////////////

          builder: (_) =>
              HomeScreenOne(), // не забыть поменять на работающюю страницу

// ////////////// // ////////////// // ////////////// // ////////////// // //////////////
        ),
      );
    });
  }

  // @override
  // void dispose(){
  //   super.dispose();
  //   SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
  //   overlays: SystemUiOverlay.values);
  //   super.dispose();
  // }

// class _SplashScreenState extends State<SplashScreen>{
  @override
  Widget build(BuildContext context) {
    return const Material(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Угадай число!',
            style: TextStyle(color: Colors.black, fontSize: 35),
          ),
        ],
      ),
    );
  }
}

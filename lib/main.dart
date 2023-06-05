import 'package:condo_genius_beta/pages/login/login.dart';
import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';

void main() {
  runApp(const CondoGenius());
}

class CondoGenius extends StatelessWidget {
  const CondoGenius({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CondoGenius',
      home: AnimatedSplashScreen(
        duration: 3000,
        splash: Image.asset("assets/condogenius.png"),
        splashIconSize: double.maxFinite,
        nextScreen: const Login(),
        splashTransition: SplashTransition.fadeTransition,
        backgroundColor: Colors.white,
      ),
    );
  }
}

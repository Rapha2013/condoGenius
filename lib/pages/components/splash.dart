import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:condo_genius_beta/pages/login/login.dart';
import 'package:flutter/material.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      duration: 3000,
      splash: Image.asset("assets/condogenius.png"),
      splashIconSize: double.maxFinite,
      nextScreen: const Login(),
      splashTransition: SplashTransition.fadeTransition,
      backgroundColor: Colors.white,
    );
  }
}

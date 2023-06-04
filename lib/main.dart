import 'package:condo_genius_beta/pages/login/login.dart';
import 'package:flutter/material.dart';

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
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromRGBO(12, 192, 223, 1),
        ),
        useMaterial3: false,
      ),
      home: const Login(),
    );
  }
}

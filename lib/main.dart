import 'package:design2/welcome_screen.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // debugShowCheckedModeBanner: true,
      debugShowCheckedModeBanner: false,

      home: WelcomeScreen(),
    );
  }
}

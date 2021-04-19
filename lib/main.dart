import 'package:flutter/material.dart';
import 'package:intro_screen_1/IntroScreens/intro_main.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: IntroScreens(),
      debugShowCheckedModeBanner: false,
    );
  }
}


import 'package:flutter/material.dart';

import 'input_page.dart';

void main() => runApp(BMICalculator());

final ThemeData theme = ThemeData(); //v2

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      //theme: ThemeData.dark(),  //pre-builtin
      theme: ThemeData.dark().copyWith(
        cardTheme: theme.cardTheme.copyWith(
          color: Color(0xFF1d1f33)
        ),
        scaffoldBackgroundColor: Color(0xFF090c22),
        textTheme: TextTheme(
          bodyText1: TextStyle(
            color: Colors.white, //0xFFFFFFFF
          ),
        ),
        colorScheme: theme.colorScheme.copyWith(
          primary: Color(0xFF090c22),
          secondary: Colors.purple,
        ),
      ),
      home: InputPage(),
    );
  }
}
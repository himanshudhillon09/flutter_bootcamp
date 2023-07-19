import 'package:flutter/material.dart';
import 'inputPage.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
          appBarTheme: AppBarTheme(backgroundColor: Color(0xFF0A0E21)),
          scaffoldBackgroundColor: Color(0xFF0A0E21),
          floatingActionButtonTheme:
              FloatingActionButtonThemeData(backgroundColor: Colors.purple)),
      home: InputPage(),
    );
  }
}

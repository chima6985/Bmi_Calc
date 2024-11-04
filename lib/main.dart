// ignore_for_file: library_private_types_in_public_api, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'input_page.dart';
void main() {
  return  runApp(BMICalculator());}

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(). copyWith (
        scaffoldBackgroundColor: const Color(0XFF0A0E21),
        appBarTheme: const AppBarTheme(
          backgroundColor:  Color(0XFF0A0E21), 
        )
      ),
      home: const InputPage(),
    );
  } 
}



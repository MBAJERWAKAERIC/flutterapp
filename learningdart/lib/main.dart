import 'package:bmi/screens/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());

  class MyApp extends StatelessWidget {
    @Override
    Widget build(BuildContext context) {
      return MaterialApp(
        title: 'BMI Calculation',
        debugShowCheckedModeBanner: false,

      );
      }
}

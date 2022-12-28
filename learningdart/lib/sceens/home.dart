import 'package:bmi/constants/app_constants.dart';
import 'package:bmi/widgets/left_bar.dart';
import 'package:bmi/widgets/right_bar.dart';
import 'package:flutter/material.dart';
import 'package:learningdart/constants/app_constants.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "BMI Calculator",
          style: TextStyle(
            color: Color: accentHexColor, fontWeight: fontWeight.w300),
            backgroundColor: Color.transparent,
            elveation: 0,
            centerTitle: true,

      ),
      backgroundColor: mainHexColor,
      body: SingleChildScrollView(
        child: column(
          chldren:[
            SizedBox(height: 20,)
          ]
        ),)
    );
  }
}

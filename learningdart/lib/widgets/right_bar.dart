import 'dart:html';

import 'package:bmi/constants/app_constants.dart';
import 'package:flutter/material.dart';

class LeftBar extends StatelessWigte {
  final double BarWidth;
  const leftBar({Key key, @required this.barWidth}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Row( 
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          height: 25,
          width: barWidth,
          decoration: BoxDecoration(
            borderadious:borderRadius.Only(
              topLeft:Radious.circular(20),
              bottomLeft:Radious.circular(20),
            )
          coolor: accentHexColor),
        )
      ],
      );
  }
}

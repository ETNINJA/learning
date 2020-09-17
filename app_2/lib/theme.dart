import 'package:flutter/material.dart';

final ThemeData myTheme = ThemeData(
  //primarySwatch: MaterialColor(primary, swatch),
  primaryColor: Color(0xFF612F74),
  accentColor: Color(0xff3CAEA3),
  buttonColor: Color(0xFFC0074E),
  hoverColor: Color(0x5E07C03E),
  splashColor: Color(0x85F6FA06), // 85 is opacity

  primaryTextTheme: TextTheme(
    headline6: TextStyle(
      fontSize: 14.0,
      fontStyle: FontStyle.italic,
      color: Colors.white,
    ),
  ),
);

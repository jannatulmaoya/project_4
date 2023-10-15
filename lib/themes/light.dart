import 'dart:html';

import 'package:flutter/material.dart';

ThemeData lightThemes = ThemeData(
    primaryColor: Color.fromRGBO(7, 248, 124, 0.522),
    appBarTheme: const AppBarTheme(
        backgroundColor: Color.fromRGBO(36, 219, 182, 0.353),
        titleTextStyle: TextStyle(
            color: Color.fromRGBO(243, 181, 182, 0.741), fontSize: 25)),
    textTheme: TextTheme(
      bodyText1: TextStyle(color: Colors.black),
      bodyText2: TextStyle(color: Colors.black),
      headline1: TextStyle(color: Colors.black),
      headline2: TextStyle(color: Colors.black),
      subtitle1: TextStyle(color: Colors.black),
      subtitle2: TextStyle(color: Colors.black),
      button: TextStyle(color: Colors.black),
    ),
    scaffoldBackgroundColor: Colors.grey.shade200,
    elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(backgroundColor: Colors.brown)));

import 'package:flutter/material.dart';

ThemeData darkTheme = ThemeData(
    iconTheme: IconThemeData(color: Colors.white),
    iconButtonTheme: IconButtonThemeData(
        style: ButtonStyle(iconColor: MaterialStatePropertyAll(Colors.white))),
    primaryColor: Colors.white,
    appBarTheme: AppBarTheme(
        backgroundColor: Colors.grey.shade500,
        titleTextStyle: TextStyle(color: Colors.white, fontSize: 25)),
    scaffoldBackgroundColor: Color.fromARGB(255, 161, 159, 159),
    textTheme: const TextTheme(
      headline1: TextStyle(color: Colors.white),
      headline2: TextStyle(color: Colors.white),
      bodyText1: TextStyle(color: Colors.white),
      bodyText2: TextStyle(color: Colors.white),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
        style:
            ElevatedButton.styleFrom(backgroundColor: Colors.grey.shade500)));

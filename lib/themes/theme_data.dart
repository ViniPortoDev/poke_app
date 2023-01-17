import 'package:flutter/material.dart';

class PokeThemeData {
  static ThemeData lightTheme = ThemeData(
    cardColor: Colors.white,
    fontFamily: 'Roboto',
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: const AppBarTheme(
      titleTextStyle: TextStyle(color: Colors.black),
      elevation: 0,
      toolbarHeight: 100,
      centerTitle: true,
      backgroundColor: Colors.white,
      iconTheme: IconThemeData(
        color: Color(0xff6E6E6E),
      ),
    ),
    primaryColor: const Color(0xff373635),
    colorScheme: ColorScheme.fromSwatch().copyWith(
      secondary: const Color(0xffF2F2F2),
    ),
    iconTheme: const IconThemeData(
      color: Color(0xffCBCBCB),
    ),
    textTheme: const TextTheme(
      headline1: TextStyle(color: Colors.grey, fontSize: 12),
      headline2: TextStyle(color: Color(0xffB0B0B0), fontSize: 14),
      headline3: TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: 18,
        color: Colors.black,
      ),
      headline4: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 20,
        color: Colors.black,
      ),
      headline5: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 24,
        color: Colors.black,
      ),
      headline6: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 32,
        color: Colors.black,
      ),
    ),
  );
  static ThemeData darkTheme = ThemeData(
    cardColor: Colors.black,
    appBarTheme: const AppBarTheme(
      titleTextStyle: TextStyle(color: Colors.white),
      elevation: 0,
      toolbarHeight: 100,
      centerTitle: true,
      backgroundColor: Color(0xff303030),
      iconTheme: IconThemeData(color: Colors.white),
    ),
    scaffoldBackgroundColor: const Color(0xff303030),
  );
}

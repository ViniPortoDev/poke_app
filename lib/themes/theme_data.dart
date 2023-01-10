import 'package:flutter/material.dart';

class PokeThemeData {
  static ThemeData lightTheme = ThemeData(
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
      secondary: const Color(0xffFF5F50),
    ),
  );
  static ThemeData darkTheme = ThemeData(
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

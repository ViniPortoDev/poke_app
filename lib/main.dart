import 'package:flutter/material.dart';
import 'src/pages/home/home_page.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Roboto',
        backgroundColor: const Color(0xffF2F2F2),
        primaryColor: const Color(0xff373635),
      ),
      home: const PokeLocHomePage(),
    ),
  );
}

import 'package:flutter/material.dart';
import 'src/pages/home/home_page.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Roboto',
        primaryColor: const Color(0xff373635),
      ),
      home: const PokeLocHomePage(),
    ),
  );
}

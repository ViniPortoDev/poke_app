import 'package:desafio02/routes/pages.dart';
import 'package:desafio02/routes/routes.dart';
import 'package:flutter/material.dart';
import 'src/pages/home/home_page.dart';

void main() {
  runApp(
    MaterialApp(
      initialRoute: Routes.home,
      routes: Pages.pages,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Roboto',
        backgroundColor: const Color(0xffF2F2F2),
        primaryColor: const Color(0xff373635),
      ),
      home: const PokemonHomePage(),
    ),
  );
}

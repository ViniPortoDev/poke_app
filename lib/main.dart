import 'package:desafio02/routes/pages.dart';
import 'package:desafio02/routes/routes.dart';
import 'package:desafio02/themes/theme_data.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      initialRoute: Routes.home,
      routes: Pages.pages,
      debugShowCheckedModeBanner: false,
      theme: PokeThemeData.lightTheme,
    ),
  );
}

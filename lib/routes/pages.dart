import 'package:desafio02/routes/routes.dart';
import 'package:desafio02/src/pages/home/home_page.dart';
import 'package:desafio02/src/pages/pokeinfo/pokeinfo_page.dart';
import 'package:flutter/material.dart';

class Pages {
  static Map<String, Widget Function(BuildContext)> pages = {
    Routes.home: (context) => const PokemonHomePage(),
    Routes.pokeinfo: (context) => const PokeinfoPage(),
  };
}

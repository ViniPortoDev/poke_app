import 'package:desafio02/routes/routes.dart';
import 'package:desafio02/src/pages/pokeinfo/pokeinfo_page.dart';
import 'package:flutter/material.dart';

import '../src/controllers/home_controller.dart';

class Pages {
  static final controller = HomeController();
  static Map<String, Widget Function(BuildContext)> pages = {
    Routes.pokeinfo: (context) =>  PokeinfoPage(),
  };
}

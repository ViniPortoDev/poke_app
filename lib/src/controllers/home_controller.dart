import 'package:desafio02/src/models/filter_model.dart';
import 'package:flutter/material.dart';

class HomeController {
  List<FilterModel> filterList = [
    FilterModel(id: 1, icon: Icons.display_settings_sharp),
    FilterModel(id: 2, icon: Icons.catching_pokemon, text: 'Fire'),
    FilterModel(id: 3, icon: Icons.catching_pokemon, text: 'Water'),
    FilterModel(id: 4, icon: Icons.catching_pokemon, text: 'Glass'),
    FilterModel(id: 5, icon: Icons.catching_pokemon, text: 'Eletric'),
    FilterModel(id: 6, icon: Icons.catching_pokemon, text: 'Poison'),
    FilterModel(id: 7, icon: Icons.catching_pokemon, text: 'Flyng'),
  ];
}

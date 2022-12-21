import 'package:desafio02/src/controllers/home_controller.dart';
import 'package:flutter/material.dart';

import '../../../design_patterns/list_tile_widget.dart';

class PokemonsListView extends StatelessWidget {
  final controller = HomeController();
  PokemonsListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: controller.pokemons.length,
      itemBuilder: (context, index) {
        return ListTileWidget(
          pokemons: controller.pokemons[index],
        );
      },
    );
  }
}

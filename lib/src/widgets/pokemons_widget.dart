import 'package:flutter/material.dart';

import '../../routes/routes.dart';
import '../controllers/home_controller.dart';
import 'list_tile_widget.dart';

class PokemonsWidget extends StatelessWidget {
  const PokemonsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final controller = HomeController();
    return SizedBox(
      height: size.height - 220,
      child: ListView.builder(
        itemCount: controller.pokemons.length,
        itemBuilder: (context, index) {
          return ListTileWidget(
            ontap: () {
              Navigator.pushNamed(
                context,
                Routes.pokeinfo,
                arguments: controller.pokemons[index],
              );
            },
            pokemon: controller.pokemons[index],
          );
        },
      ),
    );
  }
}

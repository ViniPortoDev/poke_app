import 'package:desafio02/src/controllers/home_controller.dart';
import 'package:desafio02/src/models/pokemon_model.dart';
import 'package:flutter/material.dart';

class PokemonSelectedImage extends StatelessWidget {
  final PokemonModel pokemon;
  const PokemonSelectedImage({
    Key? key,
    required this.pokemon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = HomeController();
    return SizedBox(
      height: 350,
      child: Stack(
        alignment: Alignment.centerRight,
        children: [
          Positioned(
            left: 0,
            child: Container(
              height: 350,
              width: 350,
              decoration: BoxDecoration(
                color: controller.getColor(pokemon),
                borderRadius: BorderRadius.circular(175),
              ),
            ),
          ),
          Positioned(
            bottom: 55,
            right: 0,
            child: Container(
              width: 210,
              height: 55,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(500),
                boxShadow: const [
                  BoxShadow(
                    color: Color.fromARGB(52, 0, 0, 0),
                    blurRadius: 10,
                  ),
                ],
              ),
            ),
          ),
          Image.asset(
            pokemon.avatarImage,
            height: 250,
            width: 250,
            cacheWidth: 240,
            alignment: Alignment.centerRight,
          ),
        ],
      ),
    );
  }
}

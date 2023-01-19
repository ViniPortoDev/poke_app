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
    final size = MediaQuery.of(context).size;
    final controller = HomeController();
    return SizedBox(
      height: size.width * 1.01,
      child: Stack(
        alignment: Alignment.centerRight,
        children: [
          Positioned(
            left: size.height * 0.01,
            child: Container(
              height: size.width * 0.928,
              width: size.width * 0.928,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: controller.getColor(pokemon),
              ),
            ),
          ),
          Positioned(
            bottom: size.height * 0.1,
            right: size.width * 0.01,
            child: Container(
              width: size.width * 0.44,
              height: size.height * 0.1,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(500),
                boxShadow: [
                  BoxShadow(
                    color: const Color.fromARGB(52, 0, 0, 0),
                    blurRadius: size.height * 0.03,
                  ),
                ],
              ),
            ),
          ),
          Image.asset(
            pokemon.avatarImage,
            height: size.height * 0.901,
            width: size.width * 0.731,
            alignment: Alignment.centerRight,
          ),
        ],
      ),
    );
  }
}

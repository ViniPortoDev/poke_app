import 'package:flutter/material.dart';

import '../models/pokemon_model.dart';
import 'picture_frames_widget.dart';

class GalleryWidget extends StatelessWidget {
  final PokemonModel pokemon;
  const GalleryWidget({Key? key, required this.pokemon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomLeft,
      children: [
        SizedBox(
          height: 340,
          width: 75,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 24),
            child: ListView.builder(
              itemCount: pokemon.galleryImages.length,
              itemBuilder: (context, index) {
                return PictureFramesWidget(
                  image: pokemon.galleryImages[index],
                );
              },
            ),
          ),
        ),
        Container(
          width: 75,
          height: 50,
          decoration: const BoxDecoration(
            color: Colors.white,
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(0, 255, 255, 255),
                Colors.white,
              ],
              begin: Alignment.topRight,
            ),
          ),
        ),
      ],
    );
  }
}

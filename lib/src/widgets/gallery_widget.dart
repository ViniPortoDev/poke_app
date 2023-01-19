import 'package:flutter/material.dart';

import '../models/pokemon_model.dart';
import 'picture_frames_widget.dart';

class GalleryWidget extends StatelessWidget {
  final PokemonModel pokemon;
  const GalleryWidget({Key? key, required this.pokemon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
      height: size.height,
      child: Stack(
        alignment: Alignment.bottomLeft,
        children: [
          SizedBox(
            width: size.width * 0.192,
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: size.width * 0.096),
              child: CustomScrollView(
                slivers: [
                  SliverList(
                    delegate: SliverChildBuilderDelegate(
                      childCount: pokemon.galleryImages.length,
                      (context, index) {
                        return PictureFramesWidget(
                          image: pokemon.galleryImages[index],
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            width: size.width * 0.192,
            height: size.width * 0.192,
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
      ),
    );
  }
}

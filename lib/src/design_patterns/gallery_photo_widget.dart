import 'package:flutter/material.dart';

import '../models/pokemon_model.dart';

class GalleryPhotosWidget extends StatelessWidget {
  const GalleryPhotosWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final arg = ModalRoute.of(context)?.settings.arguments as PokemonModel;
    return SizedBox(
      height: 250,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              border: Border.all(color: const Color(0xffF2F2F2)),
              borderRadius: BorderRadius.circular(16),
            ),
            child: Image.asset(arg.image1),
          ),
          Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              border: Border.all(color: const Color(0xffF2F2F2)),
              borderRadius: BorderRadius.circular(16),
            ),
            child: Image.asset(arg.image2),
          ),
          Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              border: Border.all(color: const Color(0xffF2F2F2)),
              borderRadius: BorderRadius.circular(16),
            ),
            child: Image.asset(arg.image3),
          ),
          Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                  border: Border.all(color: const Color(0xffF2F2F2)),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Image.asset(arg.image4),
              ),
              Container(
                height: 50,
                width: 60,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    gradient: LinearGradient(colors: [
                      Color.fromARGB(0, 255, 255, 255),
                      Colors.white,
                    ], begin: Alignment.topRight)),
              )
            ],
          ),
        ],
      ),
    );
  }
}

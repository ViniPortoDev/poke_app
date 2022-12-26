import 'package:desafio02/src/design_patterns/find_button_widget.dart';
import 'package:desafio02/src/design_patterns/gallery_photo_widget.dart';
import 'package:flutter/material.dart';

import '../../design_patterns/favorite_button_widget.dart';
import '../../models/pokemon_model.dart';

class PokeinfoPage extends StatelessWidget {
  const PokeinfoPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final arg = ModalRoute.of(context)?.settings.arguments as PokemonModel;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        toolbarHeight: 85,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.keyboard_arrow_left_rounded,
            size: 40,
            color: Color(0xff6F6F6F),
          ),
        ),
        actions: const [FavoriteButtonWidget()],
      ),
      body: Container(
        color: Colors.white,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    arg.name,
                    style: const TextStyle(
                        fontSize: 32, fontWeight: FontWeight.bold),
                  ),
                  Icon(
                    arg.gender,
                    size: 35,
                    color: const Color(0xffCBCBCB),
                  )
                ],
              ),
            ),
            const SizedBox(height: 12),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    arg.type,
                    style: const TextStyle(
                        fontSize: 17, fontWeight: FontWeight.w500),
                  ),
                  Text(
                    arg.number,
                    style: const TextStyle(
                        fontSize: 16, fontWeight: FontWeight.w400),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 12),
            Padding(
              padding: const EdgeInsets.only(left: 24),
              child: Row(
                children: [
                  const Icon(
                    Icons.location_on,
                    color: Colors.red,
                    size: 18,
                  ),
                  const SizedBox(width: 4),
                  Text(
                    arg.localization,
                    style: const TextStyle(
                      color: Color(0xffB0B0B0),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 12),
            Padding(
              padding: const EdgeInsets.only(left: 24),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const GalleryPhotosWidget(),
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      Positioned(
                        left: 20,
                        child: Container(
                          decoration: BoxDecoration(
                              color: arg.backGroundColor,
                              borderRadius: BorderRadius.circular(500)),
                          height: 250,
                          width: 250,
                        ),
                      ),
                      Image.asset(
                        arg.avatarImage,
                        height: 200,
                      ),
                    ],
                  )
                ],
              ),
            ),
            const SizedBox(height: 12),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Sobre',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 6),
                  Text(
                    arg.descripton,
                    style: const TextStyle(color: Color(0xffB0B0B0)),
                  )
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: const [
                FindButtonWidget(
                    icon: Icons.catching_pokemon_outlined, text: 'Encontrar'),
              ],
            )
          ],
        ),
      ),
    );
  }
}

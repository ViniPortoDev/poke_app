import 'package:desafio02/src/widgets/find_button_widget.dart';
import 'package:desafio02/src/widgets/gallery_widget.dart';
import 'package:desafio02/src/widgets/pokemon_selected_info_widget.dart';
import 'package:flutter/material.dart';
import '../../models/pokemon_model.dart';

class PokeinfoPage extends StatefulWidget {
  const PokeinfoPage({
    Key? key,
  }) : super(key: key);

  @override
  State<PokeinfoPage> createState() => _PokeinfoPageState();
}

class _PokeinfoPageState extends State<PokeinfoPage> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    late final PokemonModel pokemon;
    final _arguments = ModalRoute.of(context)?.settings.arguments;
    if (_arguments != null) {
      pokemon = _arguments as PokemonModel;
    }

    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 85,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.keyboard_arrow_left_rounded,
            size: 40,
          ),
        ),
        actions: [
          Stack(
            alignment: Alignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 18),
                child: Container(
                  height: 45,
                  width: 45,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: const Color(0xffFFE6E3),
                  ),
                  child: IconButton(
                    onPressed: () {
                      setState(() {
                        pokemon.isFavorite = !pokemon.isFavorite;
                      });
                    },
                    icon: Icon(
                      pokemon.isFavorite
                          ? Icons.favorite
                          : Icons.favorite_border,
                      color: pokemon.isFavorite ? Colors.red : Colors.grey,
                      size: 30,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
      body: LayoutBuilder(
        builder: (_, constraints) {
          return SingleChildScrollView(
            child: SizedBox(
              height: constraints.maxHeight,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          pokemon.name,
                          style: theme.textTheme.headline6,
                        ),
                        Icon(
                          pokemon.gender == PokemonGender.male
                              ? Icons.male
                              : Icons.female,
                          size: 35,
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
                          pokemon.type,
                          style: theme.textTheme.headline3,
                        ),
                        Text(
                          pokemon.number,
                          style: theme.textTheme.headline3,
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
                          pokemon.localization,
                          style: theme.textTheme.headline2,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 12),
                  Padding(
                    padding: const EdgeInsets.only(left: 24),
                    child: SizedBox(
                      height: 350,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GalleryWidget(pokemon: pokemon),
                          PokemonSelectedImage(pokemon: pokemon),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 24),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Sobre',
                            style: theme.textTheme.headline5,
                          ),
                          const SizedBox(height: 6),
                          Text(
                            pokemon.descripton,
                            style: theme.textTheme.headline2,
                          )
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  const Align(
                    alignment: Alignment.bottomRight,
                    child: FindButtonWidget(
                      icon: Icons.catching_pokemon_outlined,
                      text: 'Encontrar',
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

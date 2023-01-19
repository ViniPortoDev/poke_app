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
    final size = MediaQuery.of(context).size;
    final theme = Theme.of(context);
    late final PokemonModel pokemon;
    final _arguments = ModalRoute.of(context)?.settings.arguments;
    if (_arguments != null) {
      pokemon = _arguments as PokemonModel;
    }

    return Scaffold(
      appBar: AppBar(
        toolbarHeight: size.width * 0.229,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.keyboard_arrow_left_rounded,
            size: size.width * 0.098,
          ),
        ),
        actions: [
          Stack(
            alignment: Alignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(right: size.width * 0.074),
                child: Container(
                  height: size.width * 0.117,
                  width: size.width * 0.117,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14),
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
                      size: size.width * 0.069,
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
          return SizedBox(
            height: size.height,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: size.width * 0.074,
                    ),
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
                          size: size.width * 0.074,
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: size.width * 0.024),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: size.width * 0.074,
                    ),
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
                  SizedBox(height: size.width * 0.024),
                  Padding(
                    padding: EdgeInsets.only(
                      left: size.width * 0.069,
                    ),
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
                  Padding(
                    padding: EdgeInsets.only(
                      left: size.width * 0.074,
                    ),
                    child: SizedBox(
                      height: size.width * 1.01,
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
                  Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: size.width * 0.074),
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
                          style: const TextStyle(
                            height: 1.6,
                            color: Color(0xffB0B0B0),
                            fontSize: 18,
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: size.width * 0.074),
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

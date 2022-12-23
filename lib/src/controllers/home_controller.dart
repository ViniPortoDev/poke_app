import 'package:desafio02/src/models/filter_model.dart';
import 'package:flutter/material.dart';

import '../models/pokemon_model.dart';

class HomeController {
  List<FilterModel> filterList = [
    FilterModel(id: 1, icon: Icons.tune, text: ''),
    FilterModel(id: 2, icon: Icons.catching_pokemon, text: 'Fire'),
    FilterModel(id: 3, icon: Icons.catching_pokemon, text: 'Water'),
    FilterModel(id: 4, icon: Icons.catching_pokemon, text: 'Glass'),
    FilterModel(id: 5, icon: Icons.catching_pokemon, text: 'Eletric'),
    FilterModel(id: 6, icon: Icons.catching_pokemon, text: 'Poison'),
    FilterModel(id: 7, icon: Icons.catching_pokemon, text: 'Flyng'),
  ];

  List<PokemonModel> pokemons = [
    PokemonModel(
      id: 0,
      name: 'Bubasaur',
      avatarImage: 'assets/images/Bulbasaur.png',
      type: 'Glass/Poison',
      descripton:
          'Há uma semente de planta em suas costas desde o dia em que este Pokémon nasceu. A semente cresce lentamente.',
      localization: '0.3 km de distância',
    ),
    PokemonModel(
      id: 1,
      name: 'Charmander',
      avatarImage: 'assets/images/Charmander.png',
      type: 'Fire',
      descripton:
          'Tem preferência por coisas quentes. Quando chove, diz-se que o vapor jorra da ponta de sua cauda.',
      localization: '0.3 km de distância',
    ),
    PokemonModel(
      id: 2,
      name: 'Squirtle',
      avatarImage: 'assets/images/Squirtle.png',
      type: 'Water',
      descripton:
          'Quando retrai seu longo pescoço em sua concha, esguicha água com força vigorosa.',
      localization: '0.3 km de distância',
    ),
    PokemonModel(
      id: 3,
      name: 'Pidgey',
      avatarImage: 'assets/images/Pidgey.png',
      type: 'Flying/Normal',
      descripton:
          'Muito dócil. Se atacado, muitas vezes chuta areia para se proteger, em vez de revidar.',
      localization: '1.4 km de distância',
    ),
    PokemonModel(
      id: 4,
      name: 'Ekans',
      avatarImage: 'assets/images/Ekans.png',
      type: 'Poison',
      descripton:
          'Quanto mais velho fica, mais cresce. À noite, envolve seu longo corpo nos galhos das árvores para descansar.',
      localization: '2.6 km de distância',
    ),
    PokemonModel(
      id: 5,
      name: 'Pikachu',
      avatarImage: 'assets/images/Pikachu.png',
      type: 'Eletric',
      descripton:
          'Pikachu que pode gerar eletricidade poderosa tem bolsas nas bochechas que são extra macias e super elásticas.',
      localization: '14.8 km de distância',
    ),
  ];
}

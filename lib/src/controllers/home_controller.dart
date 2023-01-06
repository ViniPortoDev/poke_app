import 'package:desafio02/src/models/filter_model.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import '../models/pokemon_model.dart';

class HomeController {
  List<FilterModel> filterList = [
    FilterModel(id: 1, icon: LineIcons.horizontalSliders, text: ''),
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
      descripton: '''
Há uma semente de planta em suas costas desde o dia em que este Pokémon nasceu. A semente cresce lentamente.''',
      localization: '0.3 km de distância',
      backgroundColor: 'assets/images/backgrounds/fundo_verde.png',
      backgroundAvatarColor: BackgroundAvatarColor.green,
      gender: PokemonGender.male,
      number: 'Nº 001',
      galleryImages: [
        'assets/images/bulbasaur/dck5gvr-d1a822f4-cb27-46b3-a0ad-5538b486b6f5.png',
        'assets/images/bulbasaur/bulba_frent.png',
        'assets/images/bulbasaur/Bulbasaur-Pokemon-PNG-Clipart-Background.png',
        'assets/images/bulbasaur/96-968122_bulbasaur-bulbasaur-de-may-png.png',
      ],
    ),
    PokemonModel(
      id: 1,
      name: 'Charmander',
      avatarImage: 'assets/images/Charmander.png',
      type: 'Fire',
      descripton:
          '''Tem preferência por coisas quentes. Quando chove, diz-se que o vapor jorra da ponta de sua cauda.''',
      localization: '0.3 km de distância',
      backgroundColor: 'assets/images/backgrounds/fundo_laranja.png',
      backgroundAvatarColor: BackgroundAvatarColor.orange,
      gender: PokemonGender.male,
      number: 'Nº 004',
      galleryImages: [
        'assets/images/charmander/okemon-charmander-png-pokemon-charmander-11563093928xx84qyh0bt.png',
        'assets/images/charmander/10-109344_charmander-png-hd-image-transparent-stock-charmander-pokemon.png',
        'assets/images/charmander/png-transparent-charmander-pokemon-others-mammal-orange-vertebrate.png',
        'assets/images/charmander/C1.png',
      ],
    ),
    PokemonModel(
      id: 2,
      name: 'Squirtle',
      avatarImage: 'assets/images/Squirtle.png',
      type: 'Water',
      descripton:
          '''Quando retrai seu longo pescoço em sua concha, esguicha água com força vigorosa.''',
      localization: '0.3 km de distância',
      backgroundColor: 'assets/images/backgrounds/fundo_azul.png',
      backgroundAvatarColor: BackgroundAvatarColor.blue,
      gender: PokemonGender.male,
      number: 'Nº 007',
      galleryImages: [
        'assets/images/squirtle/580b57fcd9996e24bc43c32a.png',
        'assets/images/squirtle/23-231780_png-pack-naked-squirtle.png',
        'assets/images/squirtle/135-1359971_squirtle-png-transparent-image-squirtle-png-png-download.png',
        'assets/images/squirtle/png-clipart-pokemon-x-and-y-pokemon-ruby-and-sapphire-pokemon-black-white-pikachu-squirtle-pikachu-fictional-character-pokemon.png',
      ],
    ),
    PokemonModel(
      id: 3,
      name: 'Pidgey',
      avatarImage: 'assets/images/Pidgey.png',
      type: 'Flying/Normal',
      descripton:
          '''Muito dócil. Se atacado, muitas vezes chuta areia para se proteger, em vez de revidar.''',
      localization: '1.4 km de distância',
      backgroundColor: 'assets/images/backgrounds/fundo_marrom.png',
      backgroundAvatarColor: BackgroundAvatarColor.brown,
      gender: PokemonGender.female,
      number: 'Nº 016',
      galleryImages: [
        'assets/images/pidgay/560-5608851_pidgeotto-png-transparent-png.png',
        'assets/images/pidgay/kisspng-rooster-goose-cygnini-duck-clip-art-pidgey-5b338a4a77c705.png',
        'assets/images/pidgay/png-clipart-chicken-pokemon-go-pidgeot-pidgey-galliformes-nintendo.png',
        'assets/images/pidgay/png-transparent-pidgeotto-pidgey-johto-pokemon-shroomish-pokemon-galliformes-chicken-vertebrate.png',
      ],
    ),
    PokemonModel(
      id: 4,
      name: 'Ekans',
      avatarImage: 'assets/images/Ekans.png',
      type: 'Poison',
      descripton:
          'Quanto mais velho fica, mais cresce. À noite, envolve seu longo corpo/n nos galhos das árvores para descansar.',
      localization: '2.6 km de distância',
      backgroundColor: 'assets/images/backgrounds/fundo_roxo.png',
      backgroundAvatarColor: BackgroundAvatarColor.purple,
      gender: PokemonGender.female,
      number: 'Nº 023',
      galleryImages: [
        'assets/images/ekans/32-325633_023-ekans-used-glare-and-acid-ekans-transparent.png',
        'assets/images/ekans/275-2759267_ekans-png-png-download-pokemon-hd-png-ekans.png',
        'assets/images/ekans/807-8079779_lookit-my-art-neo-draws-all-the-pokemon.png',
        'assets/images/ekans/ekans.png',
      ],
    ),
    PokemonModel(
      id: 5,
      name: 'Pikachu',
      avatarImage: 'assets/images/Pikachu.png',
      type: 'Eletric',
      descripton:
          '''Pikachu que pode gerar eletricidade poderosa tem bolsas nas bochechas que são extra macias e super elásticas.''',
      localization: '14.8 km de distância',
      backgroundColor: 'assets/images/backgrounds/fundo_amarelo.png',
      backgroundAvatarColor: BackgroundAvatarColor.yellow,
      gender: PokemonGender.male,
      number: 'Nº 025',
      galleryImages: [
        'assets/images/pikachu/510775920002ed607ff0a5582932214a.png',
        'assets/images/pikachu/Angry-Pikachu.png',
        'assets/images/pikachu/png-transparent-hey-you-pikachu-pokemon-go-pokemon-x-and-y-pikachu-mammal-carnivoran-dog-like-mammal-thumbnail.png',
        'assets/images/pikachu/Pokemon-Pikachu-PNG-Photo.png',
      ],
    ),
  ];
}

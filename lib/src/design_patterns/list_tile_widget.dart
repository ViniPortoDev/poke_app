import 'package:desafio02/src/models/pokemon_model.dart';
import 'package:flutter/material.dart';

class ListTileWidget extends StatelessWidget {
  final PokemonModel pokemons;
  const ListTileWidget({Key? key, required this.pokemons}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(22),
        ),
        child: ListTile(
          onTap: () {},
          contentPadding: const EdgeInsets.all(12),
          leading: Image.asset(pokemons.avatarImage),
          title: Text(
            pokemons.name,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          subtitle: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 8, bottom: 8),
                child: Text(
                  pokemons.type,
                  style: const TextStyle(fontSize: 13, color: Colors.black),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 8),
                child: Text(
                  pokemons.descripton,
                  style: const TextStyle(fontSize: 11),
                ),
              ),
              Row(
                children: [
                  const Icon(
                    Icons.location_on,
                    color: Colors.red,
                    size: 18,
                  ),
                  const SizedBox(width: 4),
                  Text(pokemons.localization),
                ],
              ),
            ],
          ),
          trailing: const Icon(
            Icons.catching_pokemon,
            color: Colors.red,
          ),
        ),
      ),
    );
  }
}

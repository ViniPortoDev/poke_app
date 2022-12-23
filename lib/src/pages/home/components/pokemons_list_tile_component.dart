// ignore_for_file: must_be_immutable

import 'package:desafio02/routes/routes.dart';
import 'package:desafio02/src/models/pokemon_model.dart';
import 'package:flutter/material.dart';

class ListTileWidget extends StatefulWidget {
  final PokemonModel pokemons;
  bool isSelected;
  ListTileWidget({
    Key? key,
    required this.pokemons,
    this.isSelected = false,
  }) : super(key: key);

  @override
  State<ListTileWidget> createState() => _ListTileWidgetState();
}

class _ListTileWidgetState extends State<ListTileWidget> {
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
          onTap: () {
            Navigator.pushNamed(context, Routes.POKEINFO);
          },
          contentPadding: const EdgeInsets.all(12),
          leading: Image.asset(
            widget.pokemons.avatarImage,
          ),
          title: Text(
            widget.pokemons.name,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          subtitle: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 8, bottom: 8),
                child: Text(
                  widget.pokemons.type,
                  style: const TextStyle(fontSize: 13, color: Colors.black),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 8),
                child: Text(
                  widget.pokemons.descripton,
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
                  Text(widget.pokemons.localization),
                ],
              ),
            ],
          ),
          trailing: IconButton(
              onPressed: () {
                setState(() {
                  widget.isSelected = !widget.isSelected;
                });
              },
              icon: Icon(
                widget.isSelected == false
                    ? Icons.favorite_border
                    : Icons.favorite,
                color: widget.isSelected == false ? Colors.grey : Colors.red,
                size: 30,
              )),
        ),
      ),
    );
  }
}

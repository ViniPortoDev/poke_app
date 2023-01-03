import 'package:flutter/material.dart';
import '../../../models/pokemon_model.dart';

class ListTileComponent extends StatefulWidget {
  final PokemonModel pokemons;
  final Function() ontap;
  const ListTileComponent({
    Key? key,
    required this.pokemons,
    required this.ontap,
  }) : super(key: key);

  @override
  State<ListTileComponent> createState() => _ListTileComponentState();
}

class _ListTileComponentState extends State<ListTileComponent> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.ontap,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        child: Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(22),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 120,
                width: 120,
                decoration: BoxDecoration(
                  color: widget.pokemons.backgroundAvatarColor,
                  borderRadius: BorderRadius.circular(22),
                ),
                child: Image.asset(widget.pokemons.avatarImage),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 8),
                    Text(
                      widget.pokemons.name,
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8, bottom: 8),
                      child: Text(
                        widget.pokemons.type,
                        style:
                            const TextStyle(fontSize: 13, color: Colors.black),
                      ),
                    ),
                    Padding(
                        padding: const EdgeInsets.only(bottom: 8),
                        child: SizedBox(
                          width: 140,
                          child: RichText(
                              maxLines: 3,
                              text: TextSpan(
                                text: widget.pokemons.descripton,
                                style: const TextStyle(
                                    fontSize: 11, color: Colors.grey),
                              )),
                        )),
                    Row(
                      children: [
                        const Icon(
                          Icons.location_on,
                          color: Colors.red,
                          size: 18,
                        ),
                        const SizedBox(width: 4),
                        Text(widget.pokemons.localization,
                            style: const TextStyle(
                                fontSize: 12, color: Colors.grey)),
                      ],
                    ),
                  ],
                ),
              ),
              IconButton(
                onPressed: () {
                  setState(() {
                    widget.pokemons.isFavorite = !widget.pokemons.isFavorite;
                  });
                },
                icon: Icon(
                  widget.pokemons.isFavorite
                      ? Icons.favorite
                      : Icons.favorite_border,
                  color: widget.pokemons.isFavorite ? Colors.red : Colors.grey,
                  size: 30,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

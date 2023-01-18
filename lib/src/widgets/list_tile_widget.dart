import 'package:desafio02/src/controllers/home_controller.dart';
import 'package:flutter/material.dart';
import '../models/pokemon_model.dart';

class ListTileWidget extends StatefulWidget {
  final controller = HomeController();
  final PokemonModel pokemon;
  final Function() ontap;
  ListTileWidget({
    Key? key,
    required this.pokemon,
    required this.ontap,
  }) : super(key: key);

  @override
  State<ListTileWidget> createState() => _ListTileWidgetState();
}

class _ListTileWidgetState extends State<ListTileWidget> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return InkWell(
      onTap: widget.ontap,
      child: Padding(
        padding: EdgeInsets.only(
          bottom: size.width * 0.048,
          left: size.width * 0.069,
          right: size.width * 0.069,
        ),
        child: Container(
          width: size.width * 0.85,
          decoration: BoxDecoration(
            color: Theme.of(context).cardColor,
            borderRadius: BorderRadius.circular(16),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.all(size.width * 0.026),
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Container(
                          width: size.width * 0.27,
                          decoration: BoxDecoration(
                            color: widget.controller.getColor(widget.pokemon),
                            borderRadius: BorderRadius.circular(18),
                          ),
                          child: Image.asset(widget.pokemon.avatarImage),
                        ),
                        Positioned(
                          bottom: 10,
                          child: Container(
                            width: size.width * 0.23,
                            height: 5,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(36),
                              boxShadow: const [BoxShadow(blurRadius: 10)],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: size.width * 0.048,
                    ),
                    child: SizedBox(
                      width: size.width * 0.293,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            widget.pokemon.name,
                            style: Theme.of(context).textTheme.headline4,
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(
                              vertical: size.width * 0.026,
                            ),
                            child: Text(
                              widget.pokemon.type,
                              style: const TextStyle(
                                fontSize: 13,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          RichText(
                            overflow: TextOverflow.ellipsis,
                            maxLines: 2,
                            text: TextSpan(
                              text: widget.pokemon.descripton,
                              style: const TextStyle(
                                fontSize: 11,
                                color: Colors.grey,
                              ),
                            ),
                          ),
                          SizedBox(height: size.width * 0.013),
                          Row(
                            children: [
                              const Icon(
                                Icons.location_on,
                                color: Colors.red,
                                size: 18,
                              ),
                              const SizedBox(width: 4),
                              Text(
                                widget.pokemon.localization,
                                style: Theme.of(context).textTheme.headline1,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: size.width * 0.026,
                  right: size.width * 0.026,
                ),
                child: IconButton(
                  onPressed: () {
                    setState(() {
                      widget.pokemon.isFavorite = !widget.pokemon.isFavorite;
                    });
                  },
                  icon: Icon(
                    widget.pokemon.isFavorite
                        ? Icons.favorite
                        : Icons.favorite_border,
                    color: widget.pokemon.isFavorite ? Colors.red : Colors.grey,
                    size: size.width * 0.064,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

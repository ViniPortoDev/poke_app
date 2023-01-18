import 'package:flutter/material.dart';
import '../../widgets/appbar_widget.dart';
import '../../widgets/filters_widget.dart';
import '../../widgets/pokemons_widget.dart';

class PokemonHomePage extends StatefulWidget {
  const PokemonHomePage({Key? key}) : super(key: key);

  @override
  State<PokemonHomePage> createState() => _PokemonHomePageState();
}

class _PokemonHomePageState extends State<PokemonHomePage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBarWidget(size: size.width * 0.277),
      body: Container(
        height: size.height,
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.secondary,
          borderRadius: BorderRadius.circular(16),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: size.width * 0.058),
              Padding(
                padding: EdgeInsets.only(
                  left: size.width * 0.074,
                ),
                child: const FilterWidget(),
              ),
              SizedBox(height: size.width * 0.069),
              const PokemonsWidget(),
            ],
          ),
        ),
      ),
    );
  }
}

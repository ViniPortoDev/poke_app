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
    return Scaffold(
      appBar: const AppBarWidget(),
      body: Container(
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.secondary,
          borderRadius: BorderRadius.circular(22),
        ),
        child: Column(
          children: const [
            SizedBox(height: 30),
            FilterWidget(),
            SizedBox(height: 30),
            PokemonsWidget(),
          ],
        ),
      ),
    );
  }
}

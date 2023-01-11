import 'package:desafio02/src/controllers/home_controller.dart';
import 'package:flutter/material.dart';
import '../../../routes/routes.dart';
import '../../widgets/appbar_widget.dart';
import '../../widgets/filter_button_widget.dart';
import '../../widgets/list_tile_widget.dart';

class PokemonHomePage extends StatefulWidget {
  const PokemonHomePage({Key? key}) : super(key: key);

  @override
  State<PokemonHomePage> createState() => _PokemonHomePageState();
}

class _PokemonHomePageState extends State<PokemonHomePage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final _controller = HomeController();

    return Scaffold(
      appBar: const AppBarWidget(),
      body: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              color: const Color(0xffF2F2F2),
              borderRadius: BorderRadius.circular(22),
            ),
            child: Column(
              children: [
                const SizedBox(height: 30),
                SizedBox(
                  height: 50,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: _controller.filterList.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(left: 18),
                        child: FilterButtonWidget(
                          filterModel: _controller.filterList[index],
                        ),
                      );
                    },
                  ),
                ),
                const SizedBox(height: 30),
                SizedBox(
                  height: size.height - 220,
                  child: ListView.builder(
                    itemCount: _controller.pokemons.length,
                    itemBuilder: (context, index) {
                      return ListTileWidget(
                        ontap: () {
                          Navigator.pushNamed(
                            context,
                            Routes.pokeinfo,
                            arguments: _controller.pokemons[index],
                          );
                        },
                        pokemon: _controller.pokemons[index],
                      );
                    },
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

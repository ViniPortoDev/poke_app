import 'package:desafio02/src/controllers/home_controller.dart';
import 'package:desafio02/src/pages/home/components/filter_button_component.dart';
import 'package:flutter/material.dart';

import 'components/pokemons_list_tile_component.dart';

class PokemonHomePage extends StatefulWidget {
  const PokemonHomePage({Key? key}) : super(key: key);

  @override
  State<PokemonHomePage> createState() => _PokemonHomePageState();
}

class _PokemonHomePageState extends State<PokemonHomePage> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    final controller = HomeController();

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        toolbarHeight: 100,
        centerTitle: true,
        backgroundColor: Colors.white,
        leading: Padding(
          padding: const EdgeInsets.only(left: 8),
          child: InkWell(
            onTap: () {},
            child: Image.asset(
              'assets/images/menu_icon.png',
            ),
          ),
        ),
        title: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text(
              'Localização',
              style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 12,
                  color: Color(0xffC8C8C8)),
            ),
            Text(
              'Parnaíba-PI, Brasil',
              style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                  color: Colors.black),
            ),
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: CircleAvatar(
              child: ClipOval(
                  child: Image.asset(
                'assets/images/azul-caneta.jpg',
                height: 40,
                fit: BoxFit.cover,
              )),
            ),
          ),
        ],
      ),
      body: Container(
        color: Colors.white,
        child: Column(
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
                      itemCount: controller.filterList.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8),
                          child: FilterButtonWidget(
                            filterModel: controller.filterList[index],
                          ),
                        );
                      },
                    ),
                  ),
                  const SizedBox(height: 30),
                  SizedBox(
                    height: size.height - 234,
                    child: ListView.builder(
                      itemCount: controller.pokemons.length,
                      itemBuilder: (context, index) {
                        return ListTileWidget(
                          pokemons: controller.pokemons[index],
                        );
                      },
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

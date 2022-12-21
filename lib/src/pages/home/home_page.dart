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
        
          centerTitle: true,
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
          backgroundColor: Colors.white,
          leading: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.menu_rounded,
                color: Color(0xff6E6E6E),
                size: 40,
              ))),
      body: Container(
        color: Colors.white,
        child: Column(
          children: [
            //   const AppBarWidget(),
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
                    height: size.height - 190,
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

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 15,
        right: 25,
      ),
      child: SizedBox(
        height: 135,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.menu_rounded,
                  color: Color(0xff6E6E6E),
                  size: 40,
                )),
            Column(
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
            ClipOval(
                child: Image.asset(
              'assets/images/azul-caneta.jpg',
              width: 50,
              height: 50,
              fit: BoxFit.cover,
            ))
          ],
        ),
      ),
    );
  }
}

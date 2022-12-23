import 'package:desafio02/src/controllers/home_controller.dart';
import 'package:flutter/material.dart';

class PokeinfoPage extends StatelessWidget {
  final controller = HomeController();
  PokeinfoPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        toolbarHeight: 100,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.keyboard_arrow_left_rounded,
            size: 40,
            color: Color(0xff6F6F6F),
          ),
        ),
        actions: [
          Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: const Color(0xffFFE6E3)),
            child: const Icon(
              Icons.favorite,
              color: Colors.red,
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Row(
            children: [Text(controller.pokemons[0].name)],
          )
        ],
      ),
    );
  }
}

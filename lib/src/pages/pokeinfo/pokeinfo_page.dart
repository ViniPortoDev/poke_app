import 'package:desafio02/src/widgets/find_button_widget.dart';
import 'package:flutter/material.dart';
import '../../widgets/gallery_photo_widget.dart';
import '../../models/pokemon_model.dart';

class PokeinfoPage extends StatefulWidget {
  const PokeinfoPage({
    Key? key,
  }) : super(key: key);

  @override
  State<PokeinfoPage> createState() => _PokeinfoPageState();
}

class _PokeinfoPageState extends State<PokeinfoPage> {
  @override
  Widget build(BuildContext context) {
    final arg = ModalRoute.of(context)?.settings.arguments as PokemonModel;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        toolbarHeight: 85,
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
          Stack(
            alignment: Alignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 18),
                child: Container(
                  height: 45,
                  width: 45,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: const Color(0xffFFE6E3)),
                  child: IconButton(
                      onPressed: () {
                        setState(() {
                          arg.isFavorite = !arg.isFavorite;
                        });
                      },
                      icon: Icon(
                        arg.isFavorite ? Icons.favorite : Icons.favorite_border,
                        color: arg.isFavorite ? Colors.red : Colors.grey,
                        size: 30,
                      )),
                ),
              ),
            ],
          )
        ],
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      arg.name,
                      style: const TextStyle(
                          fontSize: 32, fontWeight: FontWeight.bold),
                    ),
                   /* Icon(
                      arg.gender,
                      size: 35,
                      color: const Color(0xffCBCBCB),
                    )*/
                  ],
                ),
              ),
              const SizedBox(height: 12),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      arg.type,
                      style: const TextStyle(
                          fontSize: 17, fontWeight: FontWeight.w500),
                    ),
                    Text(
                      arg.number,
                      style: const TextStyle(
                          fontSize: 16, fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 12),
              Padding(
                padding: const EdgeInsets.only(left: 24),
                child: Row(
                  children: [
                    const Icon(
                      Icons.location_on,
                      color: Colors.red,
                      size: 18,
                    ),
                    const SizedBox(width: 4),
                    Text(
                      arg.localization,
                      style: const TextStyle(
                        color: Color(0xffB0B0B0),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 12),
              Padding(
                padding: const EdgeInsets.only(left: 24),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const GalleryPhotosWidget(),
                    Stack(
                      alignment: Alignment.centerRight,
                      children: [
                        Image.asset(
                          arg.backgroundColor,
                          height: 320,
                        ),
                        Image.asset(
                          arg.avatarImage,
                          height: 250,
                        ),
                      ],
                    )
                  ],
                ),
              ),
              const SizedBox(height: 12),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Sobre',
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 6),
                    Text(
                      arg.descripton,
                      style: const TextStyle(color: Color(0xffB0B0B0)),
                    )
                  ],
                ),
              ),
              //   Expanded(child: Container()),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: const [
                  FindButtonWidget(
                      icon: Icons.catching_pokemon_outlined, text: 'Encontrar'),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

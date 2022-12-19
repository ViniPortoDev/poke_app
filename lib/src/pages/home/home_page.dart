import 'package:desafio02/src/design_patterns/button_widget.dart';
import 'package:flutter/material.dart';

class PokeLocHomePage extends StatefulWidget {
  const PokeLocHomePage({Key? key}) : super(key: key);

  @override
  State<PokeLocHomePage> createState() => _PokeLocHomePageState();
}

class _PokeLocHomePageState extends State<PokeLocHomePage> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Column(
          children: [
            const AppBarWidget(),
            Container(
              height: 500,
              decoration: BoxDecoration(
                color: const Color(0xffF2F2F2),
                borderRadius: BorderRadius.circular(22),
              ),
              child: Column(
                children: [
                  const SizedBox(height: 30),
                  SizedBox(
                    width: size.width,
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 25),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                                padding: const EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(18),
                                ),
                                child: const Icon(
                                  Icons.filter_list,
                                  size: 35,
                                  color: Color(0xffC3C3C3),
                                )),
                            const SizedBox(width: 22),
                            const ButtonWidget(text: 'Fire'),
                            const SizedBox(width: 22),
                            const ButtonWidget(text: 'water'),
                            const SizedBox(width: 22),
                            const ButtonWidget(text: 'Glass'),
                            const SizedBox(width: 22),
                            const ButtonWidget(text: 'Flying'),
                            const SizedBox(width: 22),
                            const ButtonWidget(text: 'Poison'),
                            const SizedBox(width: 22),
                            const ButtonWidget(text: 'Fighting'),
                          ],
                        ),
                      ),
                    ),
                  )
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
                child: CircleAvatar(
              radius: 20,
              child: Image.asset('assets/images/azul-caneta.jpg'),
            ))
          ],
        ),
      ),
    );
  }
}

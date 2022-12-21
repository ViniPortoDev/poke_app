import 'package:desafio02/src/controllers/home_controller.dart';
import 'package:desafio02/src/pages/home/components/filter_button_component.dart';
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
    final controller = HomeController();

    return Scaffold(
      body: Container(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            children: [
              const AppBarWidget(),
              Container(
                height: size.height,
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
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: FilterButtonWidget(
                                filterModel: controller.filterList[index],
                                isSelected: true),
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

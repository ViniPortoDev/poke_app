import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  const AppBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      toolbarHeight: 100,
      centerTitle: true,
      backgroundColor: Colors.white,
      leading: Padding(
        padding: const EdgeInsets.only(left: 8),
        child: IconButton(
          onPressed: () {},
          icon: const Icon(
            LineIcons.bars,
            size: 40,
            color: Color(0xff6E6E6E),
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
              color: Color(0xffC8C8C8),
            ),
          ),
          Text(
            'Parnaíba-PI, Brasil',
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 16,
              color: Colors.black,
            ),
          ),
        ],
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 20),
          child: CircleAvatar(
            child: ClipOval(
              child: Image.asset(
                'assets/images/manoash_gomes.jpeg',
                height: 40,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(100);
}

import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  final double size;
  const AppBarWidget({Key? key, required this.size}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
      height: size.width * 0.277,
      child: AppBar(
        leading: Padding(
          padding: const EdgeInsets.only(left: 8),
          child: IconButton(
            onPressed: () {},
            icon: Icon(
              LineIcons.bars,
              size: size.width * 0.095,
            ),
          ),
        ),
        title: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Localização',
              style: Theme.of(context).textTheme.headline2,
            ),
            const Text(
              'Parnaíba-PI, Brasil',
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 16,
              ),
            ),
          ],
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: size.width * 0.053),
            child: CircleAvatar(
              child: ClipOval(
                child: Image.asset(
                  'assets/images/manoash_gomes.jpeg',
                  height: size.width * 0.1,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(size);
}

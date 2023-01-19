import 'package:flutter/material.dart';

class FindButtonWidget extends StatelessWidget {
  final IconData icon;
  final String text;
  const FindButtonWidget({
    Key? key,
    required this.icon,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return InkWell(
      onTap: () {},
      child: Container(
        height: size.width * 0.197,
        width: size.width * 0.592,
        decoration: BoxDecoration(
          color: const Color(0xffFF5F50),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(size.width * 0.325),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              size: size.width * 0.098,
              color: Colors.white,
            ),
            SizedBox(width: size.width * 0.048),
            Text(
              text,
              style: const TextStyle(
                fontSize: 24,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

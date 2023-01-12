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
    return InkWell(
      onTap: () {},
      child: Container(
        height: 70,
        width: 200,
        decoration: const BoxDecoration( 
          color: Color(0xffFF5F50),
          borderRadius: BorderRadius.only(topLeft: Radius.circular(60)),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              size: 30,
              color: Colors.white,
            ),
            const SizedBox(width: 18),
            Text(
              text,
              style: const TextStyle(
                fontSize: 20,
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

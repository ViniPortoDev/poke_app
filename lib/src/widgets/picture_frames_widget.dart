import 'package:flutter/material.dart';

class PictureFramesWidget extends StatelessWidget {
  final String image;
  const PictureFramesWidget({Key? key, required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.only(bottom: size.width * 0.048),
      child: Container(
        width: size.width * 0.192,
        height: size.width * 0.192,
        decoration: BoxDecoration(
          border: Border.all(
            color: const Color.fromARGB(255, 223, 223, 223),
            width: 2,
          ),
          borderRadius: BorderRadius.circular(14),
        ),
        child: Image.asset(
          image,
          width: size.width * 0.085,
          height: size.width * 0.085,
        ),
      ),
    );
  }
}

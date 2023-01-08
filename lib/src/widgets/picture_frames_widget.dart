import 'package:flutter/material.dart';

class PictureFramesWidget extends StatelessWidget {
  final String images;
  const PictureFramesWidget({Key? key, required this.images}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Container(
        width: 75,
        height: 75,
        decoration: BoxDecoration(
          border: Border.all(
            color: const Color.fromARGB(255, 223, 223, 223),
            width: 2,
          ),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Image.asset(
          images,
          width: 32,
          height: 32,
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class PictureFramesWidget extends StatelessWidget {
  final String images;
  const PictureFramesWidget({Key? key, required this.images}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60,
      height: 60,
      decoration: BoxDecoration(
        border: Border.all(color: const Color(0xffF2F2F2)),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Image.asset(
        images,
        width: 32,
        height: 32,
      ),
    );
  }
}

import 'package:flutter/material.dart';

class GalleryPhotosWidget extends StatelessWidget {
  final String image1;
  final String image2;
  final String image3;
  final String image4;
  const GalleryPhotosWidget({
    Key? key,
    required this.image1,
    required this.image2,
    required this.image3,
    required this.image4,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 280,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              border: Border.all(color: const Color(0xffF2F2F2)),
              borderRadius: BorderRadius.circular(16),
            ),
            child: Image.asset(image1),
          ),
          Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              border: Border.all(color: const Color(0xffF2F2F2)),
              borderRadius: BorderRadius.circular(16),
            ),
            child: Image.asset(image2),
          ),
          Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              border: Border.all(color: const Color(0xffF2F2F2)),
              borderRadius: BorderRadius.circular(16),
            ),
            child: Image.asset(image3),
          ),
          Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              border: Border.all(color: const Color(0xffF2F2F2)),
              borderRadius: BorderRadius.circular(16),
            ),
            child: Image.asset(image4),
          ),
        ],
      ),
    );
  }
}

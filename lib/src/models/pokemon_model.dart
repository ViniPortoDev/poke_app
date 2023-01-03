import 'package:flutter/cupertino.dart';
enum PokemonGender {male, female,undefined}
class PokemonModel {
  final int id;
  final String name;
  final String avatarImage;
  final String type;
  final String descripton;
  final String localization;
  final String backgroundColor;
  final Color backgroundAvatarColor;
  final String number;
  final PokemonGender gender;
  final String image1;
  final String image2;
  final String image3;
  final String image4;
  bool isFavorite;
  PokemonModel({
    required this.id,
    required this.name,
    required this.avatarImage,
    required this.type,
    required this.descripton,
    required this.localization,
    required this.backgroundColor,
     required this.backgroundAvatarColor,
    required this.number,
    required this.gender,
    required this.image1,
    required this.image2,
    required this.image3,
    required this.image4,
    this.isFavorite = false,
  });
}

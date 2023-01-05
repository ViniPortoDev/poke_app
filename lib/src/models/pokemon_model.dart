enum PokemonGender { male, female, undefined }

enum BackgroundAvatarColor { orange, green, blue, brown, purple, yellow }

class PokemonModel {
  final int id;
  final String name;
  final String avatarImage;
  final String type;
  final String descripton;
  final String localization;
  final String backgroundColor;
  final BackgroundAvatarColor backgroundAvatarColor;
  final String number;
  final PokemonGender gender;
  final List<String> galleryImages;
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
    required this.galleryImages,
    this.isFavorite = false,
  });
}

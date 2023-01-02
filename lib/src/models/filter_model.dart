import 'package:flutter/material.dart';

class FilterModel {
  final int id;
  final IconData icon;
  final String text;
  bool isSelected = false;

  FilterModel({
    required this.id,
    required this.icon,
    required this.text,
  });
}

import 'package:flutter/material.dart';

class FilterModel {
  final int id;
  final IconData icon;
  final String? text;

  FilterModel({
    required this.id,
    required this.icon,
    this.text,
  });
}

import 'package:flutter/material.dart';

class Item {
  final String enName;
  final String jpName;
  final String imageItem;
  final String? sound;
  const Item(
      {required this.enName,
      required this.jpName,
      required this.imageItem,
      this.sound});
}

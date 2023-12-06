import 'dart:ui';

import 'package:flutter/material.dart';

class Category {
  const Category(
      {required this.id,
      required this.name,
      this.color = Colors.purple,
      required this.imagePath});

  final String id;
  final String name;
  final Color color;
  final String imagePath;
}

import 'package:flutter/material.dart';
import 'package:mealsapp/screens/categories.dart';

final theme = ThemeData(
    useMaterial3: true,
    colorScheme: ColorScheme.fromSeed(
        brightness: Brightness.dark, seedColor: Colors.grey));

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: theme,
    home: const Categories(),
  ));
}

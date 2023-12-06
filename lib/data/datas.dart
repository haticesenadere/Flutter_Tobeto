import 'package:flutter/material.dart';
import 'package:mealsapp/models/category.dart';
import 'package:mealsapp/models/meal.dart';

const categories = [
  Category(
      id: "1",
      name: "Başlangıçlar",
      color: Colors.grey,
      imagePath: "asset/içli.jpg"),
  Category(
      id: "2",
      name: "Ara Sıcaklar",
      color: Colors.purple,
      imagePath: ("asset/makarna.png")),
  Category(
      id: "3",
      name: "Ana Yemekler ",
      color: Colors.grey,
      imagePath: ("asset/kofte.png")),
  Category(
      id: "4",
      name: "Tatlılar",
      color: Colors.purple,
      imagePath: ("asset/baklava.png")),
];

const meals = [
  Meal(
      id: "1",
      categoryId: "1",
      name: "Mercimek Çorbası",
      imageUrl: "imageUrl",
      ingredients: ["Malzeme 1", "Malzeme 2", "Malzeme 3"]),
  Meal(
      id: "2",
      categoryId: "4",
      name: "Katmer",
      imageUrl: "imageUrl",
      ingredients: ["Malzeme 1", "Malzeme 2", "Malzeme 3"]),
];

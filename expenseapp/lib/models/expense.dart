//identifier: kimlik belirleyici yani ID: verilere atanan bir alan sayesinbde verilen ayrılmasını sağlar. İd int belirlenir.

import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';

const uuid =
    Uuid(); // uuid kütüphanesinden Uuid classı oluşturup rastgele nir id oluşturuyoryz.

enum Category {
  food,
  education,
  travel,
  work
} // yeni bir tip belirlemiş oluyorum asluında burada

const categoryIcons = {
  Category.food: Icons.food_bank,
  Category.education: Icons.cast_for_education,
  Category.travel: Icons.car_rental,
  Category.work: Icons.business
};

class Expense {
  Expense({
    required this.name,
    required this.price,
    required this.date,
    required this.category,
  }) : id = uuid.v4(); //const bir değeri almak yerine o değere atama yapmık
  //uuid paketi ekledim.
  final String
      id; // string olduğu durumlarda uuid,guid denilen karmaşık text kullanılır.
  final String name;
  final double price;
  final DateTime date;
  final Category category;
}

//Enums : Numaralandırma
//Enumerated Type

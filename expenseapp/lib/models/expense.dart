//identifier: kimlik belirleyici yani ID: verilere atanan bir alan sayesinbde verilen ayrılmasını sağlar. İd int belirlenir.

import 'package:uuid/uuid.dart';

const uuid = Uuid();

enum Category {
  food,
  education,
  travel,
  work
} // yeni bir tip belirlemiş oluyorum asluında burada

class Expense {
  Expense({
    required this.name,
    required this.price,
    required this.date,
    required this.category,
  }) : id = uuid.v4(); //const bir değeri almak yerine o değere atama yapmık

  final String
      id; // string olduğu durumlarda uuid,guid denilen karmaşık text kullanılır.
  final String name;
  final double price;
  final DateTime date;
  final Category category;
}

//Enums : Numaralandırma
//Enumerated Type

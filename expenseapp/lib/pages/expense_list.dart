import 'package:expenseapp/models/expense.dart';
import 'package:expenseapp/widgets/exspense_item.dart';
import 'package:flutter/material.dart';

class ExpenseList extends StatefulWidget {
  const ExpenseList({super.key});

  @override
  State<ExpenseList> createState() => _ExpenseListState();
}

class _ExpenseListState extends State<ExpenseList> {
  //dummy data: kendi oluşturduğumuz data
  final List<Expense> expenses = [
    Expense(
        name: "makarna",
        price: 200,
        date: DateTime.now(),
        category: Category.food),
    Expense(
        name: "Terzi",
        price: 3000,
        date: DateTime.now(),
        category: Category.work),
    Expense(
        name: "Kapadokya",
        price: 35000,
        date: DateTime.now(),
        category: Category.travel),
    Expense(
        name: "Udemy",
        price: 58,
        date: DateTime.now(),
        category: Category.education),
  ];

//ListWiev ile render edicez.

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 150,
            child: Text(
              "Grafik",
              style: TextStyle(fontSize: 20),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(bottom: 10.0),
            child: Text(
              "Expense Listesi",
              style: TextStyle(fontSize: 20),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: expenses.length,
              itemBuilder: (context, index) {
                return ExpenseItem(expenses[index]);
              },
            ),
          ),
        ],
      ),
    );
  }
}

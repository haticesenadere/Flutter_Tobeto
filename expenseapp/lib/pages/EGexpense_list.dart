import 'package:expenseapp/models/expense.dart';
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
        name: "Yiyecek",
        price: 200,
        date: DateTime.now(),
        category: Category.food),
    Expense(
        name: "Flutter",
        price: 300,
        date: DateTime.now(),
        category: Category.work),
  ];

//ListWiev ile render edicez.

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 250,
          child: Text("Grafik"),
        ),
        Expanded(
          child: ListView.separated(
            padding: const EdgeInsets.all(10),
            itemCount: expenses.length,
            itemBuilder: (context, index) {
              return Text(expenses[index].name);
            },
            separatorBuilder: (BuildContext context, int index) =>
                const Divider(
              color: Color.fromARGB(287, 47, 15, 87),
            ),
          ),
        ),
        const Text("Liste bitişi")
      ],
    );
  }
}

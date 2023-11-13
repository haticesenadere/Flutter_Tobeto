import 'package:expenseapp/pages/expense_list.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      home: Scaffold(
    appBar: AppBar(
      title: const Text("Expense App"),
      backgroundColor: Color.fromARGB(219, 0, 181, 221),
      centerTitle: true,
      titleTextStyle:
          const TextStyle(fontSize: 30, fontWeight: FontWeight.w400),
      toolbarHeight: 70,
    ),
    body: const ExpenseList(),
    floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: const Color.fromARGB(252, 255, 255, 0),
        child: const Icon(Icons.add)),
  )));
}

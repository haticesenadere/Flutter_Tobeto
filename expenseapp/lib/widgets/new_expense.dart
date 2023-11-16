import 'dart:math';
import 'package:flutter/material.dart';

class NewExpense extends StatefulWidget {
  const NewExpense({Key? key}) : super(key: key);

  @override
  _NewExpenseState createState() => _NewExpenseState();
}

class _NewExpenseState extends State<NewExpense> {
  DateTime dateTime = DateTime.now();
  final _nameController = TextEditingController();
  final _amountController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          TextField(
            controller: _nameController,
            maxLength: 50,
            decoration: const InputDecoration(labelText: "Expense Name"),
          ),
          TextField(
            controller: _amountController,
            keyboardType: TextInputType.number,
            decoration: const InputDecoration(
              labelText: "Amount",
              prefixText: "₺",
            ),
          ),
          IconButton(
            onPressed: () async {
              final DateTime? picked = await showDatePicker(
                context: context,
                initialDate: dateTime,
                firstDate: DateTime.utc(2013),
                lastDate: DateTime.utc(2030),
              );

              if (picked != null) {
                setState(() {
                  dateTime = picked;
                  print("Selected Date: $dateTime");
                });
              }
            },
            icon: const Icon(Icons.calendar_month),
          ),
          Text(
            "${dateTime.year} / ${dateTime.month} / ${dateTime.day}",
          ),
          ElevatedButton(
            onPressed: () {
              print("Successful Entry: $dateTime");
            },
            child: const Text("Save"),
          ),
        ],
      ),
    );
  }
}

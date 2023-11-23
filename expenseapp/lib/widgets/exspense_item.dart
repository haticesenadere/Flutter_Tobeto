import 'package:flutter/material.dart';

import 'package:expenseapp/models/expense.dart';
import 'package:flutter/material.dart';

// 10:05
class ExpenseItem extends StatelessWidget {
  const ExpenseItem(this.expense, {Key? key}) : super(key: key);
  final Expense expense;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
        child: Column(
          children: [
            Text(expense.name),
            Row(
              children: [
                // String Interpolation
                Text("${expense.price.toStringAsFixed(2)} ₺"), // Alt GR + T
                const Spacer(),
                Icon(categoryIcons[expense.category]),
                const SizedBox(width: 8),
                Text(expense.formattedDate)
              ],
            )
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Snackbar Örneği'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Snackbar göstermek için Scaffold.of(context).showSnackBar() kullanılır.
            final snackBar = SnackBar(
              content: Text('Merhaba, bu bir Snackbar!'),
              duration: Duration(
                  seconds:
                      3), // Snackbar'ın ne kadar süre gösterileceğini belirtir.
              action: SnackBarAction(
                label: 'Tamam',
                onPressed: () {
                  // Snackbar üzerindeki "Tamam" butonuna basıldığında yapılacak işlemler
                  print('Snackbar kapatıldı.');
                },
              ),
            );

            ScaffoldMessenger.of(context).showSnackBar(snackBar);
          },
          child: Text('Snackbar Göster'),
        ),
      ),
    );
  }
}

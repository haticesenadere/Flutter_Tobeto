import 'package:expenseapp/pages/expense_list.dart';
import 'package:expenseapp/pages/main_pages.dart';
import 'package:flutter/material.dart';

//single Responsibility
void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: true),
      home: const MainPage(),
    ),
  );
}

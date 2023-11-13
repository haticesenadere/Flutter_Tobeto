import 'package:expenseapp/pages/expense_list.dart';
import 'package:flutter/material.dart';

//single Responsibility
void main() {
  runApp(const MaterialApp(home: Scaffold(body: ExpenseList())));
}  //modelleme : üzerinde çalışılıcsk uygulama da nesne hale getirilmesi yapısısır. 

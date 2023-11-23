import 'dart:math';
import 'package:expenseapp/models/EGexpense.dart';
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


 void _openDatePicker() async {
    DateTime today = DateTime.now(); 
    DateTime oneYearAgo = DateTime(today.year - 1, today.month, today.day);
   
   
    var _selectedDate;
    DateTime? selectedDate = await showDatePicker(
        context: context,
        initialDate: _selectedDate == null ? today : _selectedDate!,
        firstDate: oneYearAgo,
        lastDate: today);
    setState(() {
      var _selectedDate = selectedDate;
    });
    print("Merhaba");
   
  }






  void _saveExpense() {
    if (_formKey.currentState?.validate() ?? false) {
      
      var _date;
      Expense newExpense = Expense(
        name: _nameController.text,
        price: double.parse(_amountController.text),
        date: _date,
        category: _categoryFromString(_category),
      );

      
      widget.onAddExpense(newExpense);
      _nameController.clear();
      _amountController.clear();
      _category = "Kategori Seçin";

      Navigator.of(context).pop();
    }
  }

   void _addNewExpense() {
    final amount = double.tryParse(_amountController.text);

    // Geçerli bir miktar, isim ve tarih kontrolü
    if (amount == null ||
        amount < 0 ||
        _nameController.text.isEmpty ||
        _selectedDate == null) {
      // Hata durumunda uyarı göster
      showDialog(
          context: context,
          builder: (ctx) {
            return AlertDialog(
              title: const Text("Doğrulama Hatası"),
              content: const Text("Lütfen tüm boş alanları doldurun."),
              actions: [
                TextButton(
                    onPressed: () {
                      Navigator.pop(ctx);
                    },
                    child: const Text("Tamam"))
              ],
            );
          });
    } else {
      // Geçerli durumda yeni gider oluştur ve ana ekrana bildir
      Expense expense = Expense(
          name: _nameController.text,
          price: amount,
          date: _selectedDate!,
          category: _selectedCategory);
      widget.onAdd(expense);
      Navigator.pop(context);
    }
  }
  
  
  
  
  
  
  @override
  Widget build(BuildContext context) {
    var _expensePriceController;
    var _selectedDate;
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          TextField(
            controller: _nameController,
            maxLength: 50,
            decoration: const InputDecoration(labelText: "Expense Name"),
          ),
          Row(
            children: [
              Expanded(
                child: TextField(
                  controller: _expensePriceController,
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                      labelText: "Harcama Miktarı", prefixText: "₺"),
                ),
              ),

          IconButton(
            onPressed: () => _openDatePicker(),
              icon: const Icon(Icons.calendar_month)
              ),
              Text(_selectedDate == null
                  ? "Tarih Seçiniz"
                  : DateFormat.yMd().format(_selectedDate!)),
               const SizedBox(
            height: 30,
          ),
          Row(
            children: [
              DropdownButton(
                  value: _selectedCategory,
                  items: Category.values.map((category) {
                    return DropdownMenuItem(
                        value: category, child: Text(category.name));
                  }).toList(),
                  onChanged: (value) {
                    setState(() {
                      if (value != null) _selectedCategory = value;
                    });
                  })
          ], ) ,],
          ),
          const Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text("Kapat")),
              const SizedBox(
                width: 12,
          ),],),   

            
    
          ElevatedButton(
            onPressed: () {
              print("Successful Entry: $dateTime");
            },
            child: const Text("Save"),
          ),
        ],
      ),
    ),
  }
  

}

import 'package:flutter/material.dart';

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

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<String> items = ['Item 1', 'Item 2', 'Item 3'];

  void undoLastAction() {
    if (items.isNotEmpty) {
      setState(() {
        // "Undo" işlemi: Listenin sonundaki elemanı kaldırır.
        items.removeLast();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Undo Örneği'),
      ),
      body: Column(
        children: [
          // Liste elemanlarını göster
          for (var item in items) ListTile(title: Text(item)),

          // "Undo" butonu
          ElevatedButton(
            onPressed: undoLastAction,
            child: Text('Undo'),
          ),
        ],
      ),
    );
  }
}



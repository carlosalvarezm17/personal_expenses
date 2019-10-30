import 'package:flutter/material.dart';
import 'package:personal_expenses/transaction.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final List<Transaction> transaction = [
    Transaction(id: 't1', title: 'SRI', amount: 60, date: DateTime.now()),
    Transaction(id: 't2', title: 'Food', amount: 20, date: DateTime.now()),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
          appBar: AppBar(
            title: Text('Material App Bar'),
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                width: double.infinity,
                child: Card(
                  child: Container(
                    child: Text('Chart'),
                  ),
                  color: Colors.blue,
                  elevation: 5,
                ),
              ),
              Column(
                children: transaction.map((tx) {
                  return Card(
                    child: Text(tx.title),
                  );
                }).toList(),
              )
            ],
          )),
    );
  }
}

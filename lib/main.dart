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
                    child: Row(
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.symmetric(
                              horizontal: 15, vertical: 10),
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.purple, width: 2)
                          ),
                          padding: EdgeInsets.all(10),
                          child: Text(
                            tx.amount.toString(),
                            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Colors.purple),
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(tx.title, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),),
                            Text(tx.date.toString(), style: TextStyle(color: Colors.grey),),
                          ],
                        ),
                      ],
                    ),
                  );
                }).toList(),
              )
            ],
          )),
    );
  }
}

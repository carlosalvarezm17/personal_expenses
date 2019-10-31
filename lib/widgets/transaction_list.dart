import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:personal_expenses/models/transaction.dart';

class TransactionList extends StatelessWidget {
  final List<Transaction> userTransaction;

  TransactionList(this.userTransaction);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: MediaQuery.of(context).size.height*0.50,
        child: ListView.builder(
          itemCount: userTransaction.length,
          itemBuilder: (ctx, i) {
            return Card(
              elevation: 5,
              child: Row(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: Theme.of(context).primaryColor, width: 2)),
                    padding: EdgeInsets.all(10),
                    child: Text(
                      '\$${userTransaction[i].amount.toStringAsFixed(2)}',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Theme.of(context).primaryColor),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        userTransaction[i].title,
                        style: Theme.of(context).textTheme.title,
                      ),
                      Text(
                        DateFormat.yMMMd().format(userTransaction[i].date),
                        style: TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                ],
              ),
            );
          },          
        ));
  }
}

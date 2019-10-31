import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  //String titleInput;
  //String amountInput;
  final titleController = TextEditingController();
  final amountController = TextEditingController();
  final Function newTransaction;

  NewTransaction(this.newTransaction);

  void submitData(){

    final enteredTitle = titleController.text;
    final enteredAmount = double.parse(amountController.text);

    if(enteredAmount<=0 || enteredTitle.isEmpty){
      return;
    }

    newTransaction(enteredTitle, enteredAmount);
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            TextField(
              decoration: InputDecoration(labelText: 'Title'),
              controller: titleController,
              onSubmitted: (_) => submitData(),
              /* onChanged: (v) {
                          titleInput = v;
                        },*/
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Amount'),
              controller: amountController,
              keyboardType: TextInputType.numberWithOptions(decimal: true),
              onSubmitted: (_) => submitData(),
              /*onChanged: (v) {
                          amountInput = v;
                        },*/
            ),
            FlatButton(
              child: Text('Add'),
              textColor: Colors.purple,
              onPressed:submitData,
            )
          ],
        ),
      ),
    );
  }
}

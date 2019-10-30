import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {

  //String titleInput;
  //String amountInput;
  final titleController = TextEditingController();
  final amountController = TextEditingController();

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
              /* onChanged: (v) {
                          titleInput = v;
                        },*/
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Amount'),
              controller: amountController,
              /*onChanged: (v) {
                          amountInput = v;
                        },*/
            ),
            FlatButton(
              child: Text('Add'),
              textColor: Colors.purple,
              onPressed: () {
                print(titleController.text);
              },
            )
          ],
        ),
      ),
    );
  }
}

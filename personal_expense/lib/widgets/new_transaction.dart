import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  final Function addTx;
  final titleController = TextEditingController();
  final amountController = TextEditingController();

  NewTransaction(this.addTx);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            TextField(
              decoration: InputDecoration(labelText: 'Title'),
              controller: this.titleController,
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Amount'),
              controller: this.amountController,
            ),
            FlatButton(
              child: Text('Add Transaction'),
              textColor: Colors.purple,
              onPressed: () {
                this.addTx(
                  titleController.text,
                  double.parse(amountController.text),
                );
                print(this.titleController.text);
                print(this.amountController.text);
              },
            )
          ],
        ),
      ),
    );
  }
}

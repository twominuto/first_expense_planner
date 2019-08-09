import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  final Function addTrans;
  final titleController = TextEditingController();
  final amountController = TextEditingController();

  NewTransaction(this.addTrans);
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            TextField(
              decoration: InputDecoration(labelText: 'Input the Item Title'),
              controller: titleController,
              // onChanged: (val) {
              //   titleInput = val;
              // },
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Input the Item Price'),
              controller: amountController,
              // onChanged: (val) {
              //   amountInput = val;
              // },
            ),
            FlatButton(
              child: Text('Add Transaction'),
              textColor: Colors.blueGrey,
              onPressed: () {
                addTrans(
                  titleController.text,
                  double.parse(amountController.text),
                );
                // print(titleController.text);
                // print(amountController.text);
                // print(titleInput);
                // print(amountInput);
              },
            ),
          ],
        ),
      ),
    );
  }
}

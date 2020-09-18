import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  final Function addTx;
  NewTransaction(this.addTx);

  final titleController = TextEditingController();
  final amountController = TextEditingController();

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
              controller: titleController,
              // onChanged: (value) {
              //   inputTitle = value;
              // },
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Amount'),
              controller: amountController,
              // onChanged: (value) => inputAmount = value,
            ),
            FlatButton.icon(
              //color: Theme.of(context).primaryColor,
              // shape: RoundedRectangleBorder(
              //   borderRadius: BorderRadius.circular(18.0),
              // ),
              onPressed: () {
                //print the input values
                print(titleController.text);
                print(amountController.text);
                addTx(
                    titleController.text, double.parse(amountController.text));
              },
              icon: Icon(
                Icons.add,
                color: Colors.purple,
              ),
              label: Text(
                'Add Transation',
                style: TextStyle(color: Colors.purple),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

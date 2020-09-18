import 'package:flutter/material.dart';

import '../widgets/user_transactions.dart';

class Home extends StatelessWidget {
  // String inputTitle;
  // String inputAmount;
  final titleController = TextEditingController();
  final amountController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Expenses Planner'),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Card(
              color: Color(0xFFF1F7FA),
              elevation: 5,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20)),
                  side: BorderSide(
                      width: 3, color: Theme.of(context).primaryColor)),
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 10),
                width: MediaQuery.of(context).size.width * 0.9,
                child: Text(
                  'chart of the daily transactions',
                  style: TextStyle(fontSize: 20),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            UserTransactions(),
            //user_transactions will manage the inputs and list
            // its a Statefull Widget
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

import '../models/transactions.dart';

class Home extends StatelessWidget {
  final List<Transactions> transactions = [
    Transactions(
        id: 't1', title: 'New Shoes', amount: 69.99, date: DateTime.now()),
    Transactions(
        id: 't2', title: 'YogaMat', amount: 9.50, date: DateTime.now()),
    Transactions(
        id: 't3', title: 'Dinner', amount: 63.70, date: DateTime.now()),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Expenses Planner'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Card(
              elevation: 5,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20)),
                  side: BorderSide(
                      width: 3, color: Theme.of(context).accentColor)),
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 20),
                width: MediaQuery.of(context).size.width * 0.9,
                child: Text(
                  'chart of the daily transactions',
                  style: TextStyle(fontSize: 24),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            Divider(
              height: 5,
              color: Theme.of(context).dividerColor,
              thickness: 6,
            ),
            Column(
              children: transactions
                  .map((tx) => Card(
                        elevation: 5,
                        shape: Border(
                            right: BorderSide(
                                color: Theme.of(context).primaryColor,
                                width: 20)),
                        child: Container(
                          padding: EdgeInsets.symmetric(vertical: 20),
                          width: double.infinity,
                          child: Text(
                            tx.title,
                            style: TextStyle(
                              fontSize: 24,
                              letterSpacing: 5,
                            ),
                            textAlign: TextAlign.justify,
                          ),
                        ),
                      ))
                  .toList(),
            )
          ],
        ));
  }
}

import 'package:flutter/material.dart';
import 'package:intl/intl.dart'; // to format DateTime

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

  String inputTitle;
  String inputAmount;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Expenses Planner'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Card(
              color: Color(0xFFFAFAE2),
              elevation: 5,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20)),
                  side: BorderSide(
                      width: 3, color: Theme.of(context).accentColor)),
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 10),
                width: MediaQuery.of(context).size.width * 0.9,
                child: Text(
                  'chart of the daily transactions',
                  style: TextStyle(fontSize: 14),
                  textAlign: TextAlign.center,
                ),
              ),
            ),

            //text input
            Card(
              elevation: 5,
              child: Container(
                padding: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    TextField(
                      decoration: InputDecoration(labelText: 'Title'),
                      onChanged: (value) {
                        inputTitle = value;
                      },
                    ),
                    TextField(
                      decoration: InputDecoration(labelText: 'Amount'),
                      onChanged: (value) => inputAmount = value,
                    ),
                    FlatButton.icon(
                      //color: Theme.of(context).primaryColor,
                      // shape: RoundedRectangleBorder(
                      //   borderRadius: BorderRadius.circular(18.0),
                      // ),
                      onPressed: () {
                        //print the input values
                        print(inputTitle);
                        print(inputAmount);
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
                          padding: EdgeInsets.symmetric(vertical: 10),
                          width: double.infinity,
                          child: Row(
                            children: [
                              Container(
                                margin: EdgeInsets.symmetric(horizontal: 15),
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Theme.of(context).primaryColor,
                                ),
                                child: Text(
                                  '\$${tx.amount}',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    tx.title,
                                    style: TextStyle(
                                        fontSize: 16,
                                        wordSpacing: 5,
                                        letterSpacing: 2,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    DateFormat('dd MMM ... HH:MM')
                                        .format(tx.date),
                                    style: TextStyle(
                                        fontSize: 14, color: Colors.grey[800]),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ))
                  .toList(),
            )
          ],
        ));
  }
}

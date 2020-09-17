import 'package:flutter/material.dart';
import 'package:intl/intl.dart'; // to format DateTime

import '../models/transactions.dart';

// will rebuild the list as it changes, needs a stateful
//but, as we are managing everything from user_transaction(stf), this can be stl.
class TransactionList extends StatelessWidget {
  final List<Transactions> _userTransactions;
  TransactionList(this._userTransactions);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: _userTransactions
          .map((tx) => Card(
                elevation: 5,
                shape: Border(
                    right: BorderSide(
                        color: Theme.of(context).primaryColor, width: 20)),
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
                            DateFormat('dd MMM ... HH:MM').format(tx.date),
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
    );
  }
}

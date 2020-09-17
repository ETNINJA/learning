import 'package:flutter/material.dart';

import '../widgets/new_transaction.dart';
import '../widgets/transaction_list.dart';
import '../models/transactions.dart';

class UserTransactions extends StatefulWidget {
  @override
  _UserTransactionsState createState() => _UserTransactionsState();
}

class _UserTransactionsState extends State<UserTransactions> {
  final List<Transactions> _userTransactions = [
    Transactions(
        id: 't1', title: 'New Shoes', amount: 69.99, date: DateTime.now()),
    Transactions(
        id: 't2', title: 'YogaMat', amount: 9.50, date: DateTime.now()),
    Transactions(
        id: 't3', title: 'Dinner', amount: 63.70, date: DateTime.now()),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        NewTransaction(),
        TransactionList(_userTransactions),
      ],
    );
  }
}

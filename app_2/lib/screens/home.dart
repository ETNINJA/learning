import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Expenses Planner'),
        ),
        body: Column(
          children: [
            Card(
              child: Text(
                'chart of the daily transactions',
                style: TextStyle(fontSize: 24),
              ),
            ),
            Divider(
              height: 5,
            ),
            Card(
              child: Text(
                'List of transactions',
                style: TextStyle(fontSize: 24),
              ),
            )
          ],
        ));
  }
}

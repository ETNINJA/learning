import 'package:flutter/material.dart';

class Home extends StatelessWidget {
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
            Card(
              elevation: 5,
              shape: Border(
                  right: BorderSide(
                      color: Theme.of(context).primaryColor, width: 20)),
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 50),
                width: double.infinity,
                child: Text(
                  'List of transactions',
                  style: TextStyle(fontSize: 24),
                  textAlign: TextAlign.center,
                ),
              ),
            )
          ],
        ));
  }
}

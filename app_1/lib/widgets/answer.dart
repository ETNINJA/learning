import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.60,
      child: RaisedButton(
          child: Text('Answer1'),
          onPressed: null, // pointer
          color: Colors.green[300]),
    );
  }
}

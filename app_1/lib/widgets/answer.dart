import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectHandler; // the pointer to the callback function
  Answer(this.selectHandler);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.60,
      child: RaisedButton(
          child: Text('Answer1'),
          onPressed: selectHandler, //the pointer to the the callback function
          color: Colors.green[300]),
    );
  }
}

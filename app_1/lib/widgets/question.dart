import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionText;
  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity, // to center the widget
      margin: EdgeInsets.only(top: 20, bottom: 10),
      child: Text(
        questionText,
        style: TextStyle(
          fontSize: 20,
          color: Colors.teal[800],
        ),
        textAlign:
            TextAlign.center, // take just the amount of space the text needs.
      ),
    );
  }
}

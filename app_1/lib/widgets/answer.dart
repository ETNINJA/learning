import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectHandler; // the pointer to the callback function
  final Color colorAnswer;
  final String textAnswer;
  Answer(this.selectHandler, this.colorAnswer, this.textAnswer);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.60,
      child: RaisedButton(
        color: colorAnswer,
        textColor: Colors.white,
        child: Text(textAnswer),
        onPressed: selectHandler, //the pointer to the the callback function
      ),
    );
  }
}

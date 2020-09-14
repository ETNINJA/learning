import 'package:flutter/material.dart';

import 'answer.dart';
import 'question.dart';

class Quiz extends StatelessWidget {
  final Function answerQuestion;
  final List<Map<String, Object>> questions;
  int questionIndex, index;

  Quiz(
      {@required this.answerQuestion,
      @required this.questions,
      @required this.questionIndex,
      @required this.index});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(top: 100, bottom: 50),
          child: Question(questions[questionIndex]['questionText']),
        ), // constructor
        ...(questions[questionIndex]['answers'] as List<Map<String, Object>>)
            .map(
          (e) {
            return Answer(
                () => answerQuestion(e['score']), //this is very important
                questions[index++]['buttonColor'],
                e['text']);
          },
        ).toList(),
      ],
    );
  }
}

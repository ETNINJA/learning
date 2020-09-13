import 'package:flutter/material.dart';

import 'package:app_1/widgets/question.dart';
import 'package:app_1/widgets/answer.dart';

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  var _questionIndex = 0;

  void _answerQuestion() {
    print('Answer Chosen!');
    setState(() {
      _questionIndex++;
    });

    print('INDEX  = $_questionIndex');
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'What\'s your favourite Colour?',
      'What\'s  your favourite animal?',
      'What\'s  your favourite sweet?',
    ];
    return Scaffold(
      appBar: AppBar(
        title: Text('Project One'),
      ),
      body: Center(
        child: Column(
          children: [
            Question(questions[_questionIndex]), // constructor
            Answer(_answerQuestion, Colors.green[300],
                'Answer1'), // using the class Answer -> Raised Button
            Answer(_answerQuestion, Colors.pink[300], 'Answer2'),
            Answer(_answerQuestion, Colors.blue[300], 'Answer3'),
          ],
        ),
      ),
    );
  }
}

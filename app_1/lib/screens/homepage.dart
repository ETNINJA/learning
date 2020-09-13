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
            Answer(_answerQuestion), // using the class Answer -> Raised Button
            RaisedButton(
                child: Text('Answer2'),
                onPressed: () => _answerQuestion(),
                color: Colors.pink[300]),
            RaisedButton(
                child: Text('Answer3'),
                onPressed: () {
                  _answerQuestion();
                  print('Answer 3');
                },
                color: Colors.blue[300]),
          ],
        ),
      ),
    );
  }
}

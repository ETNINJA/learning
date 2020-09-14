import 'package:flutter/material.dart';

import '../widgets/quiz.dart';
import '../widgets/result.dart';

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  var _questionIndex = 0;
  var _index = 0;
  var _totalScore = 0;

  final questions = [
    // would set it as const but colors does not allow.
    // now it's a list of Maps'
    {
      'questionText': 'What\'s your favourite Colour?',
      'answers': [
        {'text': 'Black', 'score': 1},
        {'text': 'Pink', 'score': 5},
        {'text': 'Blue', 'score': 3},
      ],
      'buttonColor': Colors.green[300],
    },
    {
      'questionText': 'What\'s  your favourite animal?',
      'answers': [
        {'text': 'cat', 'score': 1},
        {'text': 'Dog', 'score': 17},
        {'text': 'Elephant', 'score': 100},
      ],
      'buttonColor': Colors.pink[300],
    },
    {
      'questionText': 'What\'s  your favourite sweet?',
      'answers': [
        {'text': 'Brigadeiro', 'score': 1},
        {'text': 'Chocolate', 'score': 5},
        {'text': 'Nutella', 'score': 3},
      ],
      'buttonColor': Colors.blue[300],
    },
  ];

  void _answerQuestion(int score) {
    _totalScore += score;
    _questionIndex++;
    _index = 0;
    setState(() {});
    print('INDEX  = $_questionIndex');
  }

  void _resetQuiz() {
    setState(() {
      _totalScore = 0;
      _questionIndex = 0;
      _index = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Project One'),
      ),
      body: Center(
        child: _questionIndex < questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questions: questions,
                questionIndex: _questionIndex,
                index: _index)
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}

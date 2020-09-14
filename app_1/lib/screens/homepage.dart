import 'package:flutter/material.dart';

import '../widgets/quiz.dart';

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  var _questionIndex = 0;
  var _index = 0;

  final questions = [
    // would set it as const but colors does not allow.
    // now it's a list of Maps'
    {
      'questionText': 'What\'s your favourite Colour?',
      'answers': ['Black', 'Pink', 'Blue'],
      'buttonColor': Colors.green[300],
    },
    {
      'questionText': 'What\'s  your favourite animal?',
      'answers': ['Cat', 'Dog', 'Elephant'],
      'buttonColor': Colors.pink[300],
    },
    {
      'questionText': 'What\'s  your favourite sweet?',
      'answers': ['Brigadeiro', 'Chocolate', 'Sorvete'],
      'buttonColor': Colors.blue[300],
    },
  ];

  void _answerQuestion() {
    _questionIndex++;
    _index = 0;
    setState(() {});
    print('INDEX  = $_questionIndex');
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
            : Center(child: Text("No more Questions")),
      ),
    );
  }
}

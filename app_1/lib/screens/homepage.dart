import 'package:flutter/material.dart';

import 'package:app_1/widgets/question.dart';
import 'package:app_1/widgets/answer.dart';

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  var _questionIndex = 0;
  var _index = 0;

  void _answerQuestion() {
    print('Answer Chosen!');
    setState(() {
      _questionIndex++;
      _index = 0;
    });

    print('INDEX  = $_questionIndex');
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
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
    return Scaffold(
      appBar: AppBar(
        title: Text('Project One'),
      ),
      body: Center(
        child: Column(
          children: [
            Question(questions[_questionIndex]['questionText']), // constructor
            ...(questions[_questionIndex]['answers'] as List<String>).map(
              (e) {
                return Answer(
                    _answerQuestion, questions[_index++]['buttonColor'], e);
              },
            ).toList(),
          ],
        ),
      ),
    );
  }
}

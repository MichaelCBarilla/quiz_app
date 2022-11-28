import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  MyApp({super.key});

  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex += 1;
    });
    print('Answer Chosen!');
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      {
        'questionText': 'What\'s your favorite color?',
        'answers': [
          'Black',
          'Red',
          'Green',
          'White',
        ]
      },
      {
        'questionText': 'What\'s your favorite animal?',
        'answers': [
          'Rabbit',
          'Snake',
          'Turtle',
          'Lion',
        ]
      },
      {
        'questionText': 'Who\'s your favorite instructor?',
        'answers': [
          'Max',
          'Maxxx',
          'MAX',
          'max...',
        ]
      },
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Quiz App'),
        ),
        body: Column(
          children: [
            Question(
              questionText: questions[_questionIndex]['questionText'] as String,
            ),
            ...(questions[_questionIndex]['answers'] as List<String>)
                .map((answer) {
              return Answer(
                answerText: answer,
                selectHandler: _answerQuestion,
              );
            }).toList()
          ],
        ),
      ),
    );
  }
}

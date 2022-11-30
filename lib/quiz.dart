import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final VoidCallback selectHandler;
  final List<Map<String, Object>> questions;
  final int questionIndex;

  const Quiz({
    super.key,
    required this.selectHandler,
    required this.questions,
    required this.questionIndex,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
          questionText: questions[questionIndex]['questionText'] as String,
        ),
        ...(questions[questionIndex]['answers'] as List<String>).map((answer) {
          return Answer(
            answerText: answer,
            selectHandler: selectHandler,
          );
        }).toList()
      ],
    );
  }
}

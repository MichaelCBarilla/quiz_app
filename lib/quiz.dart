import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final void Function(int) selectHandler;
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
        ...(questions[questionIndex]['answers'] as List<Map<String, Object>>)
            .map((answer) {
          return Answer(
            answerText: answer['text'] as String,
            selectHandler: () => selectHandler(answer['score'] as int),
          );
        }).toList()
      ],
    );
  }
}

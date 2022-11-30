import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback answerQuestionHandler;
  final String answerText;

  const Answer({
    super.key,
    required this.answerQuestionHandler,
    required this.answerText,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: answerQuestionHandler,
        child: Text(answerText),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final VoidCallback resetQuizHandler;
  final int resultScore;

  const Result({
    super.key,
    required this.resultScore,
    required this.resetQuizHandler,
  });

  String get resultPhrase {
    String resultText;
    if (resultScore <= 8) {
      resultText = 'You are awesome and innocent!';
    } else if (resultScore <= 12) {
      resultText = 'Pretty likeable!';
    } else if (resultScore <= 16) {
      resultText = 'You are ... strange!?';
    } else {
      resultText = 'You are awful';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Text(
            resultPhrase,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        ElevatedButton(
          onPressed: resetQuizHandler,
          child: const Text('Retry Quiz'),
        )
      ],
    );
  }
}

import 'package:flutter/material.dart';

class QuestionsIdentifier extends StatelessWidget {
  const QuestionsIdentifier({
    super.key,
    required this.isCorrectAnswer,
    required this.questionIndex,
  });

  final int questionIndex;
  final bool isCorrectAnswer;

  @override
  Widget build(BuildContext context) {
    final questionNumber = questionIndex + 1;
    return Container(
      width: 30,
      height: 30,
      alignment: Alignment.center,
      decoration: BoxDecoration(
          color: isCorrectAnswer
              ? const Color.fromARGB(255, 140, 191, 216)
              : const Color.fromARGB(255, 230, 129, 225),
          borderRadius: BorderRadius.circular(100)),
      child: Text(questionNumber.toString(),
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            color: Color.fromARGB(119, 20, 0, 0),
          )),
    );
  }
}
//test
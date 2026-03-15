import 'dart:math';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/answer_button.dart';
import 'package:quiz_app/data/questions.dart';

final random = Random();

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key, required this.getSelectedAnswer});

  final void Function(String answer) getSelectedAnswer;
  @override
  State<QuestionScreen> createState() {
    return _QuestionScreenState();
  }
}

class _QuestionScreenState extends State<QuestionScreen> {
  var quizIndex = 0;

  void clickedAnswer(String ans) {
    widget.getSelectedAnswer(ans);
    setState(() {
      quizIndex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final currentQuiz = questions[quizIndex];
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            currentQuiz.questions,
            style: GoogleFonts.acme(
              color: const Color.fromARGB(255, 210, 121, 249),
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 15),
          ...currentQuiz.shufflingAnswers().map((singleAnswer) {
            return AnswerButton(
              answer: singleAnswer,
              pickedAnswer: () {
                clickedAnswer(singleAnswer);
              },
            );
          }),
        ],
      ),
    );
  }
}

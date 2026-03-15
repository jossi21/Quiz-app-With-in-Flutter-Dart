import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/results_column.dart';

class AnswerScreen extends StatelessWidget {
  const AnswerScreen({
    super.key,
    required this.selectedAnswer,
    required this.restartQuiz,
  });

  final List<String> selectedAnswer;
  final void Function() restartQuiz;
  List<Map<String, Object>> getSelectedAnswer() {
    final List<Map<String, Object>> results = [];

    for (var i = 0; i < selectedAnswer.length; i++) {
      results.add({
        "quiz_index": i,
        "quiz": questions[i].questions,
        "correct_answer": questions[i].answers[0],
        "user_answer": selectedAnswer[i],
      });
    }

    return results;
  }

  @override
  build(BuildContext context) {
    final resultData = getSelectedAnswer();
    final totalQuiz = questions.length;
    final totalCorrectResult = resultData.where((answer) {
      return (answer["correct_answer"] == answer["user_answer"]);
    }).length;
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "You get $totalCorrectResult out of $totalQuiz Correctly",
            style: TextStyle(
              color: const Color.fromARGB(255, 185, 115, 210),
              fontSize: 26,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 30),
          ResultsColumn(resultData: resultData),
          SizedBox(height: 30),
          TextButton.icon(
            style: TextButton.styleFrom(
              foregroundColor: Colors.white,
              backgroundColor: const Color.fromARGB(255, 62, 133, 155),
              textStyle: TextStyle(fontSize: 18, fontWeight: FontWeight(500)),
            ),
            onPressed: restartQuiz,
            label: Text("Start again"),
            icon: Icon(Icons.refresh),
          ),
        ],
      ),
    );
  }
}

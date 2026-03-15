import 'package:flutter/material.dart';
import 'package:quiz_app/answer_screen.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/home_page.dart';
import 'package:quiz_app/question_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});
  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  List<String> selectedAnswer = [];
  var activeScreen = "home_screen";

  void switchScreen() {
    setState(() {
      activeScreen = "question_screen";
      selectedAnswer = [];
    });
  }

  // the function that add selectedAnswer
  void getSelectedAnswer(String answer) {
    selectedAnswer.add(answer);
    if (selectedAnswer.length == questions.length) {
      setState(() {
        activeScreen = "answer_screen";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    Widget displayWidget = HomePage(startQuiz: switchScreen);

    if (activeScreen == "question_screen") {
      displayWidget = QuestionScreen(getSelectedAnswer: getSelectedAnswer);
    } else if (activeScreen == "answer_screen") {
      displayWidget = AnswerScreen(
        selectedAnswer: selectedAnswer,
        restartQuiz: switchScreen,
      );
    }
    return MaterialApp(
      home: Scaffold(
        body: Container(
          padding: EdgeInsets.all(25),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                const Color.fromARGB(255, 78, 13, 151),
                const Color.fromARGB(255, 107, 15, 168),
              ],
              begin: AlignmentGeometry.topLeft,
              end: AlignmentGeometry.bottomRight,
            ),
          ),
          child: Center(child: displayWidget),
        ),
      ),
    );
  }
}

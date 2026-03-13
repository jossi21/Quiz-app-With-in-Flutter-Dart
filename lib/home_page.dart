import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key, required this.startQuiz});

  final void Function() startQuiz;

  @override
  build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          "assets/images/quiz-logo.png",
          width: 300,
          color: const Color.fromARGB(152, 253, 253, 252),
        ),
        SizedBox(height: 30),
        Text(
          "Learn Flutter the fun way!",
          style: TextStyle(
            fontSize: 28,
            color: const Color.fromARGB(255, 191, 187, 199),
            fontWeight: FontWeight(500),
          ),
        ),
        SizedBox(height: 10),
        OutlinedButton.icon(
          onPressed: startQuiz,
          style: OutlinedButton.styleFrom(
            foregroundColor: const Color.fromARGB(255, 176, 169, 193),
            textStyle: TextStyle(fontSize: 20, fontWeight: FontWeight(400)),
          ),
          icon: Icon(Icons.arrow_right_alt),
          label: Text("Start Quiz"),
        ),
      ],
    );
  }
}

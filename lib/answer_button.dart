import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  const AnswerButton({
    super.key,
    required this.answer,
    required this.pickedAnswer,
  });

  final String answer;
  final void Function() pickedAnswer;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: pickedAnswer,
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color.fromARGB(255, 35, 17, 66),
        foregroundColor: Colors.white,
        padding: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
      ),
      child: Text(answer, textAlign: TextAlign.center),
    );
  }
}

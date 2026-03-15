import 'package:flutter/material.dart';

class ResultsColumn extends StatelessWidget {
  const ResultsColumn({super.key, required this.resultData});
  final List<Map<String, Object>> resultData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,

      child: SingleChildScrollView(
        child: Column(
          spacing: 15,
          children: resultData.map((singleResponse) {
            return SizedBox(
              width: double.infinity,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                spacing: 20,
                children: [
                  CircleAvatar(
                    radius: 15,
                    backgroundColor:
                        singleResponse["user_answer"] ==
                            singleResponse["correct_answer"]
                        ? const Color.fromARGB(255, 51, 126, 53)
                        : const Color.fromARGB(255, 138, 43, 36),
                    child: Text(
                      ((singleResponse["quiz_index"] as int) + 1).toString(),
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          (singleResponse["quiz"]) as String,
                          style: TextStyle(
                            color: const Color.fromARGB(255, 250, 221, 221),
                            fontSize: 18,
                            fontWeight: FontWeight(500),
                          ),
                        ),
                        SizedBox(height: 4),
                        Text(
                          (singleResponse["user_answer"]) as String,
                          style: TextStyle(
                            color: const Color.fromARGB(255, 191, 126, 126),
                            fontSize: 16,
                            fontWeight: FontWeight(400),
                          ),
                        ),
                        Text(
                          (singleResponse["correct_answer"]) as String,
                          style: TextStyle(
                            color: const Color.fromARGB(255, 130, 182, 216),
                            fontSize: 16,
                            fontWeight: FontWeight(400),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}

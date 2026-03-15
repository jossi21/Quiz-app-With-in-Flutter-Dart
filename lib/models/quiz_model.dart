class QuizModel {
  const QuizModel(this.questions, this.answers);

  final String questions;
  final List<String> answers;

  List<String> shufflingAnswers() {
    final shuffledAnswers = List.of(answers);
    shuffledAnswers.shuffle();
    return shuffledAnswers;
  }
}

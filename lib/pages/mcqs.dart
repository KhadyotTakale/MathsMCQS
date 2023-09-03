// quiz_data.dart

class MCQQuestion {
  final String question;
  final List<String> options;
  final int correctAnswerIndex;
  final String correctAnswerFeedback;
  final String wrongAnswerFeedback;

  MCQQuestion({
    required this.question,
    required this.options,
    required this.correctAnswerIndex,
    required this.correctAnswerFeedback,
    required this.wrongAnswerFeedback,
  });
}

// Sample questions for Chapter 1, Level 1
final List<MCQQuestion> chapter1Level1Questions = [
  MCQQuestion(
    question: 'What is the smallest natural number?',
    options: ['0', '1', '2', '10'],
    correctAnswerIndex: 1,
    correctAnswerFeedback: 'Correct! 1 is the smallest natural number.',
    wrongAnswerFeedback: 'Incorrect. Try again!',
  ),
  MCQQuestion(
    question: 'Which of the following is a prime number?',
    options: ['4', '9', '13', '15'],
    correctAnswerIndex: 2,
    correctAnswerFeedback: 'Great! 13 is a prime number.',
    wrongAnswerFeedback:
        'Oops, that\'s not correct. Prime numbers have only two divisors: 1 and themselves.',
  ),
  // Add more questions here
];

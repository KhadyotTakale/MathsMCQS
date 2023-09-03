import 'package:flutter/material.dart';
import 'mcqs.dart';

class Chapter1Level1Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chapter 1, Level 1'), // Set your page title
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'Questions for Chapter 1, Level 1', // Set the section title
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            // Display the questions here
            for (var question in chapter1Level1Questions)
              buildQuestionCard(question),
          ],
        ),
      ),
    );
  }

  // Helper function to build a question card
  Widget buildQuestionCard(MCQQuestion question) {
    return Card(
      margin: EdgeInsets.all(16.0),
      elevation: 2.0,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
              question.question,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          // Display the answer options here
          for (var i = 0; i < question.options.length; i++)
            buildAnswerOption(question, i),
        ],
      ),
    );
  }

  // Helper function to build an answer option
  Widget buildAnswerOption(MCQQuestion question, int index) {
    return ListTile(
      title: Text(question.options[index]),
      onTap: () {
        // Handle the user's selection here
        // You can implement the logic to check if the answer is correct
        // and provide feedback to the user.
      },
    );
  }
}

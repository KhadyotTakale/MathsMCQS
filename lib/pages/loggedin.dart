import 'package:flutter/material.dart';
import 'levelspages.dart';

class LoggedInPage extends StatelessWidget {
  final List<String> chapters = [
    'Chapter 1 - Real Numbers',
    'Chapter 2 - Polynomials',
    'Chapter 3 - Pair of Linear Equations in Two Variables',
    'Chapter 4 - Quadratic Equations',
    'Chapter 5 - Arithmetic Equations',
    'Chapter 6 - Triangles',
    'Chapter 7 - Coordinate Geometry',
    'Chapter 8 - Introduction to Trigonometry',
    'Chapter 9 - Some Applications of Trigonometry',
    'Chapter 10 - Circles',
    'Chapter 11 - Areas Related to Circle',
    'Chapter 12 - Surface Areas and Volumes',
    'Chapter 13 - Statistics',
    'Chapter 14 - Probability',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Logged In'),
        backgroundColor: Colors.purple[800],
      ),
      body: ListView.builder(
        itemCount: chapters.length,
        itemBuilder: (context, index) {
          final chapter = chapters[index];
          return Card(
            elevation: 2, // Add a subtle shadow
            margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
            child: ListTile(
              title: Text(
                chapter,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: () {
                // Handle chapter selection, you can navigate to the selected chapter's content page.
                // For now, let's print the selected chapter.
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => LevelsPage(chapter)));
                print('Selected Chapter: $chapter');
              },
            ),
          );
        },
      ),
    );
  }
}

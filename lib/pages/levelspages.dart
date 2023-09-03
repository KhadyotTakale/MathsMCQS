import 'package:flutter/material.dart';

class LevelsPage extends StatelessWidget {
  final String chapter;

  LevelsPage(this.chapter);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(chapter),
        backgroundColor: Colors.purple[800],
      ),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          buildLevelTile(
            context,
            'Level 1',
            'Easy',
            Colors.green,
          ),
          buildLevelTile(context, 'Level 2', 'Intermediate', Colors.blue),
          buildLevelTile(context, 'Level 3', 'Advanced', Colors.orange),
          buildLevelTile(context, 'Level 4', 'Expert', Colors.red),
        ],
      ),
    );
  }

  Widget buildLevelTile(
      BuildContext context, String level, String description, Color color) {
    return Card(
      elevation: 2,
      margin: EdgeInsets.symmetric(vertical: 8),
      child: InkWell(
        onTap: () {
          // Handle level selection here
          print('Selected $level');
        },
        child: ListTile(
          leading: CircleAvatar(
            backgroundColor: color,
            radius: 36, // Increase the radius for a larger circle
            child: Text(
              level,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 14, // Adjust the font size for the text in the circle
              ),
            ),
          ),
          title: Text(
            level,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          subtitle: Text(
            description,
            style: TextStyle(
              color: Colors.grey,
            ),
          ),
          trailing: Icon(Icons.arrow_forward_ios),
        ),
      ),
    );
  }
}

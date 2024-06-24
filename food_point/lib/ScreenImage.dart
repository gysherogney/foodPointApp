import 'package:flutter/material.dart';

class DetailedPage extends StatelessWidget {
  final String imagePath;
  final String text;

  const DetailedPage({required this.imagePath, required this.text});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Event Details'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Display the image
            Image.asset(imagePath),
            SizedBox(height: 20.0),

            // Display the event text
            Text(
              text,
              style: TextStyle(fontSize: 16.0),
            ),

            // Additional content for the event details (optional)
          ],
        ),
      ),
    );
  }
}

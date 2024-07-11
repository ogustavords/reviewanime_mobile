import 'package:flutter/material.dart';
import 'package:reviewanime/views/review_create_view.dart';

class AnimeDetailsView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Anime Details'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Anime Details', style: TextStyle(fontSize: 24)),
            SizedBox(height: 10),
            Text('Description: [No description available]'),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/write_review');
              },
              child: Text('Write a Review'),
            ),
            SizedBox(height: 20),
            Text('User Reviews', style: TextStyle(fontSize: 20)),
            Expanded(
              child: ListView(
                children: [
                  ListTile(
                    title: Text('User Review 1'),
                    subtitle: Text('Review text...'),
                  ),
                  ListTile(
                    title: Text('User Review 2'),
                    subtitle: Text('Review text...'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

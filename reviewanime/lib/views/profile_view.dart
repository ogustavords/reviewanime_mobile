import 'package:flutter/material.dart';

class ProfileView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Your Profile'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Your Reviews', style: TextStyle(fontSize: 20)),
            Expanded(
              child: ListView(
                children: [
                  ListTile(
                    title: Text('Review 1'),
                    subtitle: Text('Review text...'),
                  ),
                  ListTile(
                    title: Text('Review 2'),
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
